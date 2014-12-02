require 'test_helper'

class ModelTest < ActiveSupport::TestCase

  test 'position should be invalid when empty latitude and longitude' do 
    @position = Spyme::Model::Position.new(latitude: '', longitude: '')

    assert_equal @position.valid?, false
  end
end