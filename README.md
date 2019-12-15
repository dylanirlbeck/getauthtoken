# getauthtoken

`getauthtoken` is a small command line utility to acquire an authorization token from [Xaptum](https://dev.xaptum.io). It's intended to speed up the process of testing API's, since an authorization token is required as a header in every request and new tokens are generated every four hours.

Running `getauthtoken` from your command line after installation (see below) will always give the current token.

## Installation

First, install the gem from [Ruby Gems](https://rubygems.org). You may need to `sudo gem install` here.

```shell
$ gem install getauthtoken
```

Second, we'll need to create a JSON file `.xaptum_credentials.json` that stores your Xaptum credentials. `getauthtoken` will always use the credentials in this file to acquire your auth token.

In your `$HOME` directory, create the file `.xaptum_credentials.json` with the following structure:

```json
{
  "username": "<YOUR_USERNAME>",
  "password": "<YOUR_PASSWORD>"
}
```

## Usage

Simply run `getauthtoken` from the command line. The token should then appear and get copied to your clipboard.

```shell
$ getauthtoken
Authenticating with Xaptum...
Your token is <TOKEN>. It has been copied to the clipboard.
```

## Development

You can clone the repository and install the dependencies with [Bundler](https://bundler.io).

```shell
$ git clone https://github.com/dylanirlbeck/getauthtoken.git
$ cd getauthtoken
$ bundle install
```

Write tests, pass tests, bump version, pull request.

- **Write tests:** Write all tests in `test/getauthtoken_test.rb`.
- **Pass tests:** Write code in `lib/getauthtoken.rb` to pass the tests. You can run tests with `$ rake test`.
- **Bump version:** The current version of the gem is in `lib/getauthtoken/version.rb`. After you've made your changes, update this version by following the format `MAJOR.MINOR.PATCH`.
- **Pull request:** Open a PR! One of the maintainers will review your changes and work with you to get them merged.

For maintainers: building new gem version and pushing to Github and Ruby Gems

```shell
$ bundle exec rake release
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dylanirlbeck/getauthtoken.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
