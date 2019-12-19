require "test_helper"

describe Getauthtoken do
  it 'has a version number' do
    refute_nil Getauthtoken::VERSION
  end

  it 'gets config from ~/xaptum_config.json' do
    config = Getauthtoken::get_config()

    refute_nil config 
  end

  it 'can post invalid credentials and get error' do
    credentials = {"username" => "test", "host" => "https://dev.xaptum.io"}
    token = Getauthtoken::post_credentials(credentials, "fake")

    assert_nil token
  end

end
