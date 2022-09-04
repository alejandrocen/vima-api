# frozen_string_literal: true

def source_paths
  [__dir__]
end

def postgresql?
  !options[:skip_active_record] && options[:database] == 'postgresql'
end

def postgresql_config
  template 'config/database.yml', force: true
  copy_file '.env.template'
  copy_file '.env.template', '.env.development.local'
  copy_file '.env.template', '.env.test.local'
  append_to_file '.gitignore', <<~IGNORE

    # Ignore env files
    .env.*
    !.env.template
  IGNORE
end

gem_group :development do
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
end

gem 'dotenv-rails', groups: %i[development test] if postgresql?

after_bundle do
  postgresql_config if postgresql?
  template '.rubocop.yml'
  run 'rm -rf .git'
  run 'touch .rubocop_todo.yml'
  run 'bundle exec rubocop -A'
  run 'bundle exec rubocop --auto-gen-config'
end
