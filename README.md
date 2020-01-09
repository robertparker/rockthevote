# rocky_rtv

[![Build Status](https://travis-ci.org/robertparker/rocky_rtv.svg?branch=master)](https://travis-ci.org/robertparker/rocky_rtv)
[![Coverage Status](https://coveralls.io/repos/github/robertparker/rocky_rtv/badge.svg?branch=master)](https://coveralls.io/github/robertparker/rocky_rtv?branch=master)

Ruby wrapper for the RocktheVote's Online Voter Registration API, Rocky. See also the full [API documentation](https://rock-the-vote.github.io/Voter-Registration-Tool-API-Docs/). This API allows partners to prepare voter registration forms specific to a voter's state that can be printed, signed, and mailed. 

Supports Ruby 2.1.2 or greater.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rocky_rtv', :git => 'git@github.com:robertparker/rocky_rtv.git'
```

And then execute:

    $ bundle install

Or install it yourself as:

	$ gem install specific_install
    $ gem specific_install https://github.com/robertparker/rocky_rtv

### Usage

### Initialization and Configuration

Some methods (get_state_requirements) do not require an access token.

```ruby
# Intialize a client without an access token
client = RockyRTV::Client.new(access_token: "your-access-token")

# Initialize a client without an access token
client = RockyRTV::Client.new()
```

#### Making a Request

```ruby
client.get_state_requirements(home_zip_code: "11201", lang: "en")

```

#### Accessing Response Headers

```ruby
requirements = client.get_state_requirements(home_zip_code: "11201", lang: en)

requirements._response.headers[:content-type]
# => "application/json; charset=utf-8"

requirements._response.headers["status"]
# => "200 OK"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/robertparker/rocky_rtv. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/robertparker/rocky_rtv/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RockyRTV project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rocky_rtv/blob/master/CODE_OF_CONDUCT.md).
