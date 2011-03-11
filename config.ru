# Rackup file

# Shotgun command-line switches
#\ -s thin -o 0.0.0.0

# Tell Bundler to require all our gems
require 'bundler'
Bundler.require

# Rack configuration
#configure do
  #use Rack::GoogleAnalytics, :tracker => ''
#end

require './fontmash.rb'
run FontMash
