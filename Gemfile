source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails'

gem 'mongoid'
gem 'devise'
gem 'omniauth-facebook'
gem 'simple_form'
gem 'bootstrap-sass'
gem 'bourbon'
gem "geocoder"


group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'

group :production do
  gem 'unicorn'
  gem 'newrelic_rpm'
end

group :development do
  # https://github.com/RailsApps/rails3-mongoid-devise
  gem "quiet_assets"
  gem 'guard'
  gem 'rb-inotify', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-fchange', :require => false
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-rspec'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'mongoid-rspec' #https://github.com/evansagge/mongoid-rspec
  #gem 'email_spec'
  gem 'launchy'
end

group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end
