source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 1.1', '>= 1.1.3'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'bootstrap-sass-extras', '~> 0.0.2'
gem 'devise', '~> 4.5'
gem 'simple_form', '~> 3.2', '>= 3.2.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'font-awesome-sass', '~> 4.5'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'will_paginate', '~> 3.1', '>= 3.1.6'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
end

group :production do
  gem 'rails_12factor', '~> 0.0.2'
  gem 'pg', '~> 1.1', '>= 1.1.3'
end 


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
