require "getauthtoken/version"
require "json"
require "http"

module Getauthtoken
  AUTH_PATH = '/api/xcr/v2/xauth'

  def self.authenticate(password)
     config = get_config()
     post_credentials(config, password) 
  end

  def self.get_config()
    file = File.open(File.expand_path("~/.xaptum_config.json"))
    data = JSON.load file
    file.close
    data
  end

  def self.post_credentials(config, password)
    hash = { "username" => config["username"], "token" => password}
    json = JSON.generate(hash)
    response = HTTP.headers("Content-Type": "application/json", "Accept": "application/json")
      .post(config["host"] + AUTH_PATH, body: json)
    
    response.code == 200 ? JSON.parse(response)["data"][0]["token"] : nil
  end

  def self.pbcopy(token)
    IO.popen('pbcopy', 'w') { |f| f << token }
  end

end

