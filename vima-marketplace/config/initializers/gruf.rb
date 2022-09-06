# frozen_string_literal: true

Gruf.configure do |config|
  config.default_client_host = ENV.fetch('DEFAULT_CLIENT_HOST', 'localhost:50051')
  config.interceptors.use(
    Gruf::Interceptors::Instrumentation::RequestLogging::Interceptor,
    formatter: :logstash
  )
end
