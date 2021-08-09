source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


# Core
# ruby '2.6.5'
gem 'rails', '~> 5.2.5'

# Backend
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 4.0'
gem 'bcrypt'
# gem 'mini_magick', '~> 4.8'
# gem 'capistrano-rails', group: :development
gem 'carrierwave'
gem 'mini_magick'

# Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'

# View / Front
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'mini_racer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'bootsnap', '>= 1.1.0', require: false



group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
  gem 'pry-byebug'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'dotenv-rails'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
