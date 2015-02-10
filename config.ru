require 'time'
#put the full path of our lib directory (relative to this file)
#on top of the $LIB_PATH / aka $:
$:.unshift File.expand_path('lib',File.dirname(__FILE__))
require 'slim'
require 'application_controller'
require 'post_controller'
require 'messages_controller'
require 'about_controller'
require 'bios_controller'
require 'router'
require 'application'
require 'default_controller'
require 'home_controller'
# Router

# get "/about" => "about#index"
#
# Controller /Action
# View/Template
# Layout


use Rack::Session::Cookie, secret: 'secret'
run Application.new
