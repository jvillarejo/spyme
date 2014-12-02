require "spyme/engine"
require "spyme/model"
require "spyme/controller"

module Spyme
end

ActionController::Base.send :include, Spyme::Controller
