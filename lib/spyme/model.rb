module Spyme
  module Model
    class Position
      include ActiveModel::Model

      attr_accessor :latitude, :longitude

      validates :latitude, presence: true
      validates :longitude, presence: true

      def google_map_coords
        "#{latitude}, #{longitude}"
      end

      def to_hash
        { latitude: latitude, longitude: longitude }
      end

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

