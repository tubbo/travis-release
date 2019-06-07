# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'travis/release/version'

Gem::Specification.new do |spec|
  spec.name          = 'travis-release'
  spec.version       = Travis::Release::VERSION
  spec.authors       = ['Tom Scott']
  spec.email         = ['tubbo@psychedeli.ca']

  spec.summary       = 'Fancy Rake tasks for deploying with Travis'
  spec.description   = 'Release RubyGems via Travis-CI with a Rake task'
  spec.homepage      = 'https://github.com/tubbo/travis-release'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0'
  spec.add_development_dependency 'minitest', '~> 5'
  spec.add_development_dependency 'rubocop', '>= 0.49'
  spec.add_development_dependency 'yard', '>= 0.9.11'

  spec.add_dependency 'bundler'
  spec.add_dependency 'rake'
end
