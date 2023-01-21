# frozen_string_literal: true

module Init
  def self.call(realm_name:, root_url:)
    { app: App.new(realm_name:, root_url:) }
  end
end
