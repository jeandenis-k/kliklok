# frozen_string_literal: true

module Init
  def self.call
    { app: App.new }
  end
end
