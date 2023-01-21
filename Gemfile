# frozen_string_literal: true

source 'https://rubygems.org'

gem 'falcon', '~> 0.42.3'

gem 'ruby-lsp', '~> 0.3.7', group: :development

# copied from other backend
gem 'rack', '= 3.0.0'
gem 'dry-monads', '1.6.0'
gem 'dry-validation', '1.10.0'
gem 'dry-schema', '1.13.0'
gem 'zeitwerk', '2.6.6'
gem 'rake', '13.0.6'
gem 'jwt', '2.3.0'
gem 'rack-cors', '1.1.1'
gem 'sentry-ruby', '~> 5.2'

gem 'pry', '0.14.1'

group :development do
  gem 'rubocop', '1.25.1'
end

group :test do
  gem 'json-schema', '2.8.1'
  gem 'database_cleaner-sequel', '2.0.0'
  gem 'sus', '~> 0.16.0'
end

group :development, :test do
  gem 'byebug'
end
