source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

#Rails Gems
gem 'rails', '~> 7.0.3', '>= 7.0.3.1'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false

# Development Gems
gem 'devise'
gem 'cancancan'
gem 'rails-controller-testing'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'will_paginate', '~> 3.1.1'
gem 'will_paginate-bootstrap'

group :development, :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
end

group :development do
  gem 'letter_opener'
  gem 'web-console'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
