require 'rubocop/rake_task'
require 'rake/testtask'
require 'rspec/core/rake_task'


RuboCop::RakeTask.new

RSpec::Core::RakeTask.new(:spec) do |r|
  r.pattern = FileList['**/**/*_spec.rb']
end

args = [:spec, :rubocop]
task default: args
