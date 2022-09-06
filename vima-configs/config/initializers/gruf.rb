# frozen_string_literal: true

Gruf.configure do |config|
  config.server_binding_url = ENV.fetch('SERVER_BINDING_URL', 'localhost:50051')
  config.interceptors.use(
    Gruf::Interceptors::Instrumentation::RequestLogging::Interceptor,
    formatter: :logstash
  )
end
