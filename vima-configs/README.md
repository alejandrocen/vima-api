# Vima configs

gRPC service for Vima configs.

## Dependencies

* [PostgreSQL](https://www.postgresql.org/download)

## Running the app

Create environment files:

    $ cp .env.template .env.development.local && cp .env.template .env.test.local

Install project dependencies:

    $ bundle install

Create database:

    $ bundle exec rake db:create

Run migrations:

    $ bundle exec rake db:migrate

And then execute:

    $ bundle exec gruf
