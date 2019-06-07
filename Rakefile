# frozen_string_literal: true

require 'bundler/setup'
require 'bundler/gem_tasks'
require 'travis/release/task'
require 'rubocop/rake_task'
require 'yard'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

# require 'debug'

RuboCop::RakeTask.new :lint

Travis::Release::Task.new :release

YARD::Rake::YardocTask.new :doc

task default: %i[test build]
