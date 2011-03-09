# Shotgun command-line switches
#\ -s thin -o 0.0.0.0

require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra'
require 'haml'
require 'rack/google-analytics'

# configure { use Rack::GoogleAnalytics, :tracker => 'UA-21916923-1' }

require './fontmash.rb'
run FontMash
