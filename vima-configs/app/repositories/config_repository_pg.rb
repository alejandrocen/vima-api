# frozen_string_literal: true

class ConfigRepositoryPg
  def search(_criteria = nil)
    Config.all.as_json
  end

  def find(id)
    Config.find_by(id: id)
  end
end
