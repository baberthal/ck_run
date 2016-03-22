source 'https://rubygems.org'

# Specify your gem's dependencies in ck_run.gemspec
gemspec

group :development, :test do
  gem 'rubocop', require: false
  gem 'rubocop-rspec',
      github: 'baberthal/rubocop-rspec',
      branch: 'not_to_not_cleanup'
  gem 'pry', require: false
  gem 'pry-theme', require: false
  gem 'pry-byebug', require: false
  gem 'guard', require: false
  gem 'rb-fsevent', require: false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec', require: false
  gem 'ruby_gntp', require: false
  gem 'pry-rescue', require: false
  gem 'pry-stack_explorer', require: false
end
