# Travis::Release

[![Build Status](https://travis-ci.org/tubbo/travis-release.svg)](https://travis-ci.org/tubbo/travis-release)
[![Code Climate](https://codeclimate.com/github/tubbo/travis-release/badges/gpa.svg)](https://codeclimate.com/github/tubbo/travis-release)
[![Test Coverage](https://codeclimate.com/github/tubbo/travis-release/badges/coverage.svg)](https://codeclimate.com/github/tubbo/travis-release/coverage)

Fancy Rake tasks that release your RubyGems automatically using Travis
CI.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'travis-release'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install travis-release

Then, add the following to **Rakefile**:

```ruby
require 'travis/release/task'

Travis::Release::Task.new
```

## Usage

Once the Rake task is installed, you can run `rake release` to deploy
the gem to Travis:

```bash
$ bin/rake release
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.

Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bin/rake install`.

To release a new version, update the version number in `version.rb`, and
then run `bin/rake release` to create a git tag for the version, push git
commits and tags, and use [Travis CI][ci] to push the gem to RubyGems.

## Contributing

1. Fork it ( https://github.com/tubbo/travis-release/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[ci]: http://travis-ci.org
