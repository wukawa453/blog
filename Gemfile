source 'https://rubygems.org'

# fog
gem "fog", "~>1.20", require:"fog/aws/storage"
# Asset sync for external hosting of assets
gem "asset_sync"
# Adding Font-Awesome
gem 'font-awesome-sass'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Paperclip for attaching photos to Post models
gem 'paperclip', '~>4.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# For Full Text Searching in PG
gem 'pg_search'
#for WYSIWYG editor
gem 'ckeditor', github: 'galetahub/ckeditor'
#Use bootstrap styling system
gem 'bootstrap-sass', '~> 3.3.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0', require: false
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Jquery turbolinks
gem 'jquery-turbolinks'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc, require: false
# Adding Pagination System
gem 'will_paginate', '>3.0.0'
#user authentication gem
gem 'devise'
gem 'puma', group: :production, require: false

gem 'autoprefixer-rails'
gem 'rails_12factor', group: :production, require: false
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Adding figaro for secret key management
gem 'figaro'
gem 'gem_bench', :group => :console

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', require: false
  gem 'foreman', require: false
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "capybara", require: false
  gem "guard-rspec", require: false
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.3.3'
end
