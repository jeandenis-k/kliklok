# frozen_string_literal: true

require_relative '../kliklok'
Init.call(realm_name: 'users') => { app: }

use Rack::CommonLogger
run app
