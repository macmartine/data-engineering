# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch('config/environments/test.rb')
  watch(%r{^config/initializers/.+\.rb$})
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
  watch('test/test_helper.rb') { :test_unit }
  watch(%r{features/support/}) { :cucumber }
end

guard 'rspec', :version => 2, :cli => "--drb", :all_on_start => false, :all_after_pass => false do
  watch(%r{spec/controllers/.+\.rb$})
  watch(%r{spec/requests/.+\.rb$})
  watch(%r{spec/views/.+\.rb$})
  watch(%r{spec/models/.+\.rb$})
  watch(%r{spec/helpers/.+\.rb$})
end

