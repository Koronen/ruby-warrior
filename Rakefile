require 'rake/testtask'

desc "Creates a profile in the current directory"
task :install do
  require 'ruby_warrior/profile'
  require 'ruby_warrior/game'

  profile = RubyWarrior::Profile.new
  profile.warrior_name = ENV['RUBYWARRIOR_NAME'].capitalize
  profile.tower_path = RubyWarrior::Game.new.tower_paths.select{|path| path =~ Regexp.new(ENV['RUBYWARRIOR_DIFFICULTY'].downcase) }.first
  profile.level_number = 1
  profile.score = 0

  profile_data = Base64.encode64(Marshal.dump(profile))
  File.open('.profile', 'w') { |f| f.write(profile_data) }
end

Rake::TestTask.new(:spec) do |t|
  t.libs << 'spec'
  t.test_files = FileList['spec/**/*_spec.rb']
end

desc "Fight!"
task :fight do
  require 'ruby_warrior'
  $LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
  RubyWarrior::Runner.new(%w[-s -t 0], STDIN, STDOUT).run
end

task default: :fight
