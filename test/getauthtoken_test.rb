require "test_helper"

describe Getauthtoken do
  it 'has a version number' do
    refute_nil Getauthtoken::VERSION
  end

  it 'gets credentials from credentials.json' do
    credentials = Getauthtoken::get_credentials()

    refute_nil credentials 
  end

  it 'can post invalid credentials and get error' do
    credentials = {"username" => "test", "password" => "fake"}
    token = Getauthtoken::post_credentials(credentials)

    assert_nil token
  end

end
