guard 'bundler' do
  watch('Gemfile')
end

guard 'minitest' do
  watch(%r|^player\.rb|)              { "spec/player_spec.rb" }
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r|^spec/spec_helper\.rb|)    { "spec" }
end
