# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: vima.proto for package 'vima'

require 'grpc'
require 'vima_pb'

module Vima
  module Configs
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'vima.Configs'

      rpc :Save, ::Vima::ConfigSaveRequest, ::Vima::ConfigSaveResponse
      rpc :Search, ::Vima::ConfigSearchRequest, ::Vima::ConfigSearchResponse
      rpc :Find, ::Vima::ConfigFindRequest, ::Vima::ConfigObject
    end

    Stub = Service.rpc_stub_class
  end
end
