require "getauthtoken/version"
require "json"
require "http"

module Getauthtoken
  BASE_URL = 'https://dev.xaptum.io/api/xcr/v2/xauth'

  def self.authenticate()
     credentials = get_credentials()
     return post_credentials(credentials) 
  end

  def self.get_credentials()
    file = File.open("credentials.json")
    data = JSON.load file
    file.close
    return data
  end

  def self.post_credentials(credentials)
    hash = { "username" => credentials["username"], "token" => credentials["password"]}
    json = JSON.generate(hash)
    response = HTTP.headers("Content-Type": "application/json", "Accept": "application/json")
      .post(BASE_URL, body: json)
    
    return response.code == 200 ? JSON.parse(response)["data"][0]["token"] : nil
  
  def pbcopy(token)
    IO.popen('pbcopy', 'w') { |f| f << token }
    token
  end

  end

end

