require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ["--color", "--format", "documentation"]
  t.pattern = "./**/*_spec.rb"
end

task :default => :spec
