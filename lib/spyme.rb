require "spyme/engine"
require "spyme/model"

module Spyme
end

ActionController::Base.send :include, Spyme::Controller
