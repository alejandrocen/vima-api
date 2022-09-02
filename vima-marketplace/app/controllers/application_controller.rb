# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action do
    render json: { errors: safe_params.errors.to_h } if safe_params&.failure?
  end
end
