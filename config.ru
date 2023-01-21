# frozen_string_literal: true

require_relative '../kliklok'
Init.call => { app: }

use Rack::CommonLogger
run app
