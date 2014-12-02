require 'test_helper'

class ModelTest < ActiveSupport::TestCase

  test 'position should be invalid when empty latitude and longitude' do 
    @position = Spyme::Model::Position.new(latitude: '', longitude: '')

    assert_equal @position.valid?, false
  end

  test 'initialize from session should give correct number attributes' do 
    @position = Spyme::Model::Position.from_session(latitude: '54.34212', longitude: '32.14424')

    assert_equal @position.latitude, 54.34212
    assert_equal @position.longitude, 32.14424
  end
end