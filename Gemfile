source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '3.2.3'
gem 'bootstrap-sass', '2.0.0'
gem 'bcrypt-ruby', '3.0.1'

group :development do
	# Use sqlite3 as the database for Active Record
	gem 'sqlite3', '1.3.5'
	gem 'rspec-rails', '2.9.0'
	gem 'guard-rspec', '0.5.5'
	gem 'annotate', '> 2.4.1.beta'
end

group :assets do
	# Use SCSS for stylesheets
	gem 'sass-rails'
	# Use CoffeeScript for .js.coffee assets and views
	gem 'coffee-rails'
	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', '1.2.3'
end

group :test do
	gem 'rspec-rails', '2.9.0'
	gem 'capybara', '1.1.2'
	gem 'rb-fsevent', '>=0.4.3.1', :require => false
	gem 'growl', '1.0.3'
	gem 'factory_girl_rails', '1.4.0'
	gem 'guard-spork', '0.3.2'
	gem 'spork', '0.9.0'
end


# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.

#gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

group :production do
	gem 'pg', '0.12.2'
	gem 'rails_log_stdout',			github: 'heroku/rails_log_stdout'
	gem 'rails3_serve_static_assets',	github: 'heroku/rails3_serve_static_assets'
	gem 'rails_12factor'
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

