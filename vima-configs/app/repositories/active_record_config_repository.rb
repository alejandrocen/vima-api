# frozen_string_literal: true

class ActiveRecordConfigRepository
  include ConfigRepository

  def search(_criteria = nil)
    Config.all.as_json
  end

  def find(id)
    Config.find_by(id: id)&.as_json
  end

  def exists_by_key?(key)
    Config.exists?(key: key)
  end
end
