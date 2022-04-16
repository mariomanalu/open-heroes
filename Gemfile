source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'twilio-ruby', '~> 5.66.1'
gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
gem 'pg_search'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'simple_form', '~> 5.0', '>= 5.0.2'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'puma', '~> 4.1'
gem 'devise', '~> 4.7', '>= 4.7.2'
gem 'sass-rails', '>= 6'
gem 'paperclip', '~> 6.1'
gem 'aws-sdk', '~> 3'
gem 'webpacker', '~> 4.0'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'pg', '1.2.3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :production do
  gem 'pg', '1.2.3'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do

  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'

  gem 'webdrivers'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
