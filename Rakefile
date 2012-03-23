require "rspec/core/rake_task"
require "cucumber/rake/task"

RSpec::Core::RakeTask.new(:spec)
Cucumber::Rake::Task.new(:features)

task :test => [:spec, :features]

desc "Fight!"
task :fight do
  require "ruby_warrior"
  RubyWarrior::Runner.new(%w[-s -t 0], STDIN, STDOUT).run
end

task :default => :fight
