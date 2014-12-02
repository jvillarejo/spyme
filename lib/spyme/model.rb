module Spyme
  module Model
    class Position
      include ActiveModel::Model

      attr_accessor :latitude, :longitude

      validates :latitude, presence: true
      validates :longitude, presence: true


      class << self
        def from_session(session) 
          latitude = session[:latitude] || ''
          longitude = session[:longitude] || ''

          self.new(latitude: latitude.to_f, longitude: longitude.to_f)
        end
      end
    end
  end
end

