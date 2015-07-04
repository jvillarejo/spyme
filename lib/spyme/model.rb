module Spyme
  module Model
    class Location
      include ActiveModel::Model

      attr_accessor :latitude, :longitude

      validates :latitude, presence: true, numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
      validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

      def to_s
        "#{latitude}, #{longitude}"
      end

      def to_hash
        { latitude: latitude, longitude: longitude }
      end

      def coords
        [latitude,longitude]
      end

      class << self
        def from_session(session) 
          lat = session[:latitude]
          lon = session[:longitude]

          self.new(latitude: lat.presence && lat.to_f, longitude: lon.presence && lon.to_f)
        end
      end
    end
  end
end

