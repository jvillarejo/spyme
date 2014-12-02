module Spyme
  class PositionsController < ActionController::Base
    def create
      if position.valid?
        head 201
      else
        head 400
      end
    end

    protected
    def position
      Model::Position.new(position_params)
    end

    def position_params
      params[:position]
    end
  end
end