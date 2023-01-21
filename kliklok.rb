# frozen_string_literal: true

require 'zeitwerk'
require 'rack'
require 'json'

STDOUT.sync = true

LOADER = Zeitwerk::Loader.new
LOADER.push_dir('app')
LOADER.setup
