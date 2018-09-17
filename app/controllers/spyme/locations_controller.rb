module Spyme
  class LocationsController < ActionController::Base
    def create
      if location.valid?
        head 201
        store_in_session(location)
      else
        head 400
      end
    end

    protected
    def store_in_session(location)
      session[:latitude] = location.latitude
      session[:longitude] = location.longitude
    end

    def location
      Model::Location.new(location_params)
    end

    def location_params
      params.require(:location)
    end
  end
end
