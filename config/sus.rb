# frozen_string_literal: true

require 'byebug'

require_relative '../kliklok'

Init.call => { app: }

TEST_RACK_APP =
  Rack::Builder.app do
    use Rack::CommonLogger
    run app
  end

module Sus
  class Base
    def mock_request
      Rack::MockRequest.new(TEST_RACK_APP)
    end
  end
end
