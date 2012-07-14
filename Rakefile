require 'rake/testtask'

Rake::TestTask.new(:spec) do |t|
  t.libs << 'spec'
  t.test_files = FileList['spec/**/*_spec.rb']
end

desc "Fight!"
task :fight do
  require 'ruby_warrior'
  RubyWarrior::Runner.new(%w[-s -t 0], STDIN, STDOUT).run
end

task default: :fight
