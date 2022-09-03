# Vima API

This project contains protos, gRPC services and REST APIs for Vima.

## Generate protos for Ruby

Install protobuf compiler:

    $ sudo apt install protobuf-compiler

Install gRPC tools for Ruby:

    $ gem install grpc grpc-tools

And then execute:

    $ grpc_tools_ruby_protoc -I vima-protos --ruby_out=vima-protos-ruby/lib --grpc_out=vima-protos-ruby/lib vima-protos/vima.proto
