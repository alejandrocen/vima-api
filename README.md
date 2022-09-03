# Vima API

This project contains protos, gRPC services and REST APIs for Vima.

## Generate protos for Ruby

Install protobuf compiler:

    $ sudo apt install protobuf-compiler

Install gRPC tools for Ruby:

    $ gem install grpc grpc-tools

And then execute:

    $ grpc_tools_ruby_protoc -I vima-protos --ruby_out=vima-protos-ruby/lib --grpc_out=vima-protos-ruby/lib vima-protos/vima.proto

## Generate new application

Probably needs update bundler:

    $ gem update bundler

Generate minimal Rails application for gRPC service with ActiveRecord and PostgreSQL:

    $ rails new APP_PATH --api -MCT --skip-active-storage --skip-active-job --database=postgresql -m rails-template/template.rb

Generate minimal Rails application for REST API:

    $ rails new APP_PATH --api -MOCT --skip-active-storage --skip-active-job -m rails-template/template.rb

View all of the options:

    $ rails new --help
