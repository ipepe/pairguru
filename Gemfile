source "https://rubygems.org"

gem "rails", "5.0.2"

gem "annotate"
gem "bootstrap-sass"
gem "decent_decoration"
gem "decent_exposure"
gem "devise"
gem "draper", "3.0.0.pre1" # rails 5 compability
gem "haml-rails"
gem "jquery-rails"
gem "sass-rails"
gem "sqlite3"
gem "uglifier"

# ---- gems added by ipepe ----
# needed by Movie.pair_guru_movie_details
gem 'json_api_client'

# loads various system wide variables
gem 'dotenv-rails'

# provides json serialization of movies
gem 'active_model_serializers'

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "bullet"
  gem "letter_opener"
  gem "pry-rails"
  gem "rails-erd"
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "capybara"
  gem "factory_girl_rails"
  gem "faker"
  gem "rspec-rails"
  gem "rubocop"
  gem "simplecov"
end

group :test do
  gem "shoulda-matchers"
end
