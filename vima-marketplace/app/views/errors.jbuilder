# frozen_string_literal: true

json.errors errors do |error|
  json.code error.app_code
  json.source error.source
  json.detail error.message
end
