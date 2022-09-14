# frozen_string_literal: true

module Interface
  def method(name)
    define_method(name) do
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
