# Vima API

This project contains protos, gRPC services and REST API for Vima.

## Generate protos for Ruby

You can do this like so, after running `gem install grpc grpc-tools` to get the `grpc_tools_ruby_protoc binary`:

    $ grpc_tools_ruby_protoc -I vima-protos --ruby_out=vima-protos-ruby/lib --grpc_out=vima-protos-ruby/lib vima-protos/vima.proto
