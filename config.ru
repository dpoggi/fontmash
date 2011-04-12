# Tell Bundler to require all our gems
require 'bundler'
Bundler.require

# Rack configuration
configure do
  if ENV['RACK_ENV'].eql? 'production'
    use Rack::GoogleAnalytics, :tracker => 'UA-22080872-1'
  end
end

require './fontmash.rb'
run FontMash
