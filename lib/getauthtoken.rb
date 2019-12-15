require "getauthtoken/version"
require "json"
require "http"

module Getauthtoken
  BASE_URL = 'https://dev.xaptum.io/api/xcr/v2/xauth'

  def self.authenticate()
     credentials = get_credentials()
     post_credentials(credentials) 
  end

  def self.get_credentials()
    file = File.open(File.expand_path("~/.xaptum_credentials.json"))
    data = JSON.load file
    file.close
    data
  end

  def self.post_credentials(credentials)
    hash = { "username" => credentials["username"], "token" => credentials["password"]}
    json = JSON.generate(hash)
    response = HTTP.headers("Content-Type": "application/json", "Accept": "application/json")
      .post(BASE_URL, body: json)
    
    response.code == 200 ? JSON.parse(response)["data"][0]["token"] : nil
  end

  def self.pbcopy(token)
    IO.popen('pbcopy', 'w') { |f| f << token }
  end

end

