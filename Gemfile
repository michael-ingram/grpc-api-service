source "https://rubygems.org"

ruby '3.3.4'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.2"
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 6.4'
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem "rack-cors", '~> 2.0'

gem 'graphql', "~> 2.2"
gem 'grpc'
gem 'jwt', '~> 2.7'

group :development, :test do
  gem 'rspec-rails', '~> 6.0.3'
  gem 'dotenv-rails', '~> 2.8' # Environment variable gem.
  gem 'pry-rails', '~> 0.3.9'
end

group :test do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'database_cleaner-redis', '~> 2.0'
  gem 'shoulda-matchers', '~> 5.3'
  gem 'faker', '~> 3.2'
  gem 'simplecov', '~> 0.22', require: false
  gem 'simplecov-lcov', '~> 0.8', require: false
  gem 'webmock', '~> 3.19'
  gem 'mock_redis', '~> 0.49', require: false # Redis testing gem.
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.9'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 4.1.1'
  gem 'spring-watcher-listen', '~> 2.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 2.0.5', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

