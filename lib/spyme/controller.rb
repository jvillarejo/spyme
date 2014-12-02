module Spyme
  module Controller
    extend ActiveSupport::Concern

    included do
      helper_method :current_position
    end

    def current_position
      Spyme::Model::Position.from_session(session)
    end
  end
end