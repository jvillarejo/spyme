require 'test_helper'

class ModelTest < ActiveSupport::TestCase

  test 'location should be invalid when empty latitude and longitude' do 
    @location = Spyme::Model::Location.new(latitude: '', longitude: '')

    assert_equal @location.valid?, false
  end

  test 'initialize from session should give correct number attributes' do 
    @location = Spyme::Model::Location.from_session(latitude: '54.34212', longitude: '32.14424')

    assert_equal @location.latitude, 54.34212
    assert_equal @location.longitude, 32.14424
  end

  test 'google_map_coords should give the right query value' do
    @location = Spyme::Model::Location.from_session(latitude: '54.34212', longitude: '32.14424')

    assert_equal @location.google_map_coords, '54.34212, 32.14424'
  end

  test 'to_hash should give the right hash value' do
    @location = Spyme::Model::Location.from_session(latitude: '54.34212', longitude: '32.14424')

    assert_equal @location.to_hash, { latitude: 54.34212, longitude: 32.14424 }
  end
end