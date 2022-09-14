# frozen_string_literal: true

lib = File.expand_path 'lib', __dir__
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

require 'vima_common/version'

Gem::Specification.new do |spec|
  spec.name = 'vima-common'
  spec.version = VimaCommon::VERSION
  spec.authors = ['Alejandro Cen']
  spec.email = ['alex96.cen@gmail.com']
  spec.description = 'Common classes for Vima'
  spec.summary = 'Common classes for Vima'
  spec.files = Dir.glob('lib/**/*.rb')
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.6'
end
