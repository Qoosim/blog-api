source('https://rubygems.org')
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby('2.5.0')

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem('rails', '~> 5.2.4')
# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'

gem 'sassc'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'hirb'

gem 'bootstrap-sass'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

gem 'simple_token_authentication'

gem 'rswag'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

gem 'devise'

group :development, :test do
  gem 'rspec-rails'
  gem 'rswag-specs'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :test do
  gem 'database_cleaner'
  # Add support for rails Rspec
  gem 'capybara'
  gem 'rails-controller-testing'
  # gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'shoulda'
  gem 'shoulda-matchers'

  gem 'test-unit'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen'
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :production do
  # postgre SQL GEM
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem('tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby])
