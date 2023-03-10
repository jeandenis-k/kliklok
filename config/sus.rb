# frozen_string_literal: true

require 'byebug'

require_relative '../kliklok'

Init.call(realm_name: 'users', root_url: 'http://localhost:8000/') => { app: }

TEST_RACK_APP =
  Rack::Builder.app do
    use Rack::CommonLogger
    run app
  end

class Sus::Base # rubocop:disable Style/ClassAndModuleChildren
  def mock_request
    Rack::MockRequest.new(TEST_RACK_APP)
  end
end
