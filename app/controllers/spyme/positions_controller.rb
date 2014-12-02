module Spyme
  class PositionsController < ActionController::Base
    def create
      if position.valid?
        head 201
        store_in_session(position)
      else
        head 400
      end
    end

    protected
    def store_in_session(position)
      session[:latitude] = position.latitude
      session[:longitude] = position.longitude
    end

    def position
      Model::Position.new(position_params)
    end

    def position_params
      params[:position]
    end
  end
end