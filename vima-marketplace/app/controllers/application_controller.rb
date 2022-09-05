# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from VimaMarketplace::Error, with: :render_domain_error

  before_action do
    render_schema_error(safe_params.errors.messages) if safe_params&.failure?
  end

  private

  def render_schema_error(messages)
    errors = messages.map { |msg| VimaMarketplace::Errors::SchemaError.new(msg) }
    render '/errors', locals: { errors: errors }, status: :unprocessable_entity
  end

  def render_domain_error(error)
    raise exception if exceptions.exclude?(error.class)

    render '/errors', locals: { errors: [error] }, status: error.http_code
  end

  def exceptions
    [].freeze
  end
end
