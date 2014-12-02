module Spyme
  module Model
    class Position
      include ActiveModel::Model

      attr_accessor :latitude, :longitude

      validates :latitude, presence: true
      validates :longitude, presence: true

    end
  end
end

