# frozen_string_literal: true

def source_paths
  [__dir__]
end

gem_group :development do
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
end

after_bundle do
  template 'config/database.yml', force: true if postgresql_template?
  template '.rubocop.yml'
  run 'touch .rubocop_todo.yml'
  run 'rm -rf .git'
  run 'bundle exec rubocop -A'
  run 'bundle exec rubocop --auto-gen-config'
end

def postgresql_template?
  !options[:skip_active_record] && options[:database] == 'postgresql'
end
