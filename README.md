> Note: this repo is not actively maintained, as its functionality has been merged in to the `enfcli`, a closed-source command line tool provided by [Xaptum](https://xaptum.com) for their customers. For more information, reach out to Xaptum!

# getauthtoken

[![Gem Version](https://badge.fury.io/rb/getauthtoken.svg)](https://badge.fury.io/rb/getauthtoken)

`getauthtoken` is a small command line utility to acquire an authorization token from [Xaptum](https://dev.xaptum.io). It's intended to speed up the process of testing API's, since an authorization token is required as a header in every request and new tokens are generated every four hours.

Running `getauthtoken` from your command line after installation (see below) will always give the current token.

## Installation

First, install the gem from [Ruby Gems](https://rubygems.org).

```shell
$ gem install getauthtoken
```

Alternatively, if you've already installed `getauthtoken`, update the gem to the latest version.

```shell
$ gem update getauthtoken
```

_Note that for the above commands you may need to use `sudo gem`._

Second, we'll need to create a JSON file `.xaptum_config.json` that stores your Xaptum configurations. `getauthtoken` will always use the configurations in this file to acquire your auth token.

In your `$HOME` directory, create the file `.xaptum_config.json` with the following structure:

```json
{
  "username": "<YOUR_USERNAME>",
  "host": "<YOUR_HOST>"
}
```

`<YOUR_HOST>` should normally be `https://xaptum.io` or `https://dev.xaptum.io`.

## Usage

Simply run `getauthtoken` from the command line. You will then be prompted for your Xaptum account password. If the password is correct, your token should appear and get copied to your clipboard.

```shell
$ getauthtoken
Authenticating with Xaptum...
Enter Password

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
- **Pass tests:** Write code in `lib/getauthtoken.rb` to pass the tests. You can run tests with `rake test`.
- **Bump version:** The current version of the gem is in `lib/getauthtoken/version.rb`. After you've made your changes, update this version by following the format `MAJOR.MINOR.PATCH`.
- **Test locally:** Running `bundle exec rake build` will build a new version of the gem that you can run and test locally by installing with `gem install pkg/getauthtoken-<VERSION>` and then running `getauthtoken`.
- **Pull request:** Open a PR! One of the maintainers will review your changes and work with you to get them merged.

### For Maintainers

Build a new gem version, pushing to Github (along with a tag), and add the new version to Ruby Gems

```shell
$ bundle exec rake release
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dylanirlbeck/getauthtoken.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
