source 'https://gems.ruby-china.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',         '~> 5.0.2'
gem 'bcrypt',        '3.1.11'

gem 'faker',         '1.7.3'
gem 'carrierwave',   '1.0.0'
gem 'mini_magick',   '4.6.1'
gem 'fog',           '1.40.0'
gem 'will_paginate', '3.1.5'

gem 'sass-rails', '~> 5.0'
gem 'font-awesome-sass'
gem 'uglifier', '2.5.3'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'redcarpet'
gem 'rouge', '1.11.1'
gem 'sdoc',           '0.4.2', group: :doc
gem 'sqlite3'
gem 'acts-as-taggable-on', '~> 4.0.0'
gem 'friendly_id',    '~> 5.2.0'
gem 'responders',     '~> 2.3.0'
gem 'babosa'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor', '0.0.3'
  gem 'unicorn','5.2.0'
  gem 'puma'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
