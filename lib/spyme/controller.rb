module Spyme
  module Controller
    extend ActiveSupport::Concern

    included do
      helper_method :current_location
    end

    def current_location
      Spyme::Model::Location.from_session(session)
    end
  end
end