# Getauthtoken

`getauthtoken` is a small command line utility to acquire an authorization token from [Xaptum](https://dev.xaptum.io). It's intended to speed up the process of testing API's, since an authorization token is required as a header in every request and new tokens are generated every four hours. 

Running `getauthtoken` from your command line after installation (see below) will always give the current token.

## Installation

First, clone the repository and install the gem locally. You may need to `sudo gem install` here.

```shell
$ git clone https://github.com/dylanirlbeck/getauthtoken.git
$ cd getauthtoken
$ gem install getauthtoken-0.3.0.gem
```

Second, we'll need to create JSON file that stores your Xaptum credentials. `getauthtoken` will always use the credentials in this file to acquire your auth token. In your `$HOME` directory, create the file `.xaptum_credentials.json` with the following structure:

```json
{
    "username": "<YOUR_USERNAME>",
    "password": "<YOUR_PASSWORD>"
}
```

## Usage

Simply run `getauthtoken` from the command line. The token should then appear and get copied to your clipboard.

Note that you do **not** have to be in the `getauthtoken` project directory (that you cloned earlier) to use this utility.

```shell
$ getauthtoken
Authenticating with Xaptum...
Your token is <TOKEN>. It has been copied to the clipboard.
```

## Development

Write tests, pass tests, bump version, pull request.

Running the tests

```shell
$ rake test
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dylanirlbeck/getauthtoken.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
