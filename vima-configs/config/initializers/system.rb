# frozen_string_literal: true

Dry::Rails.container do
  config.features = []
  config.component_dirs.add 'app/repositories'
end
