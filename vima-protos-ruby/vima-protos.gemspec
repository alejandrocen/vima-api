# frozen_string_literal: true

lib = File.expand_path 'lib', __dir__
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

require 'vima_pb'
require 'vima_services_pb'

Gem::Specification.new do |spec|
  spec.name = 'vima-protos'
  spec.version = '0.0.1'
  spec.authors = ['Alejandro Cen']
  spec.email = ['alex96.cen@gmail.com']
  spec.description = 'Protos and gRPC services for Vima'
  spec.summary = 'Protos and gRPC services for Vima'
  spec.files = Dir.glob('lib/**/*.rb')
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6'

  spec.add_dependency 'grpc', '~> 1.48'
end
