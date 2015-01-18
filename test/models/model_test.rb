require 'test_helper'

class ModelTest < ActiveSupport::TestCase

  def setup
    @location = Spyme::Model::Location.from_session(latitude: '54.34212', longitude: '32.14424')
  end

  test 'location should be invalid when empty latitude and longitude' do 
    @location = Spyme::Model::Location.new(latitude: '', longitude: '')

    assert_equal @location.valid?, false
  end

  test 'location should be invalid when empty attributes' do 
    @location = Spyme::Model::Location.new

    assert_equal @location.valid?, false
  end

  test 'location should be invalid when empty session' do
    @location = Spyme::Model::Location.from_session({})

    assert_equal @location.valid?, false
  end

  test 'location should be valid at negative boundries' do
    @location = Spyme::Model::Location.new(latitude: -90.0, longitude: -180.0)
    
    assert_equal @location.valid?, true
  end

  test 'location should be valid at positive boundries' do
    @location = Spyme::Model::Location.new(latitude: 90.0, longitude: 180.0)
    
    assert_equal @location.valid?, true
  end

  test 'location should be invalid exceeding negative boundries' do
    loc_lat = Spyme::Model::Location.new(latitude: -90.00001, longitude: 130.0)
    loc_lon = Spyme::Model::Location.new(latitude: 45.0, longitude: -180.00001)
    
    assert_equal loc_lat.valid?, false
    assert_equal loc_lon.valid?, false
  end

  test 'initialize from session should give correct number attributes' do 
    assert_equal @location.latitude, 54.34212
    assert_equal @location.longitude, 32.14424
  end

  test 'as a string should give the right query value' do
    assert_equal @location.to_s, '54.34212, 32.14424'
  end

  test 'to_hash should give the right hash value' do
    assert_equal @location.to_hash, { latitude: 54.34212, longitude: 32.14424 }
  end

  test 'coords should give the values in array' do 
    assert_equal @location.coords, [54.34212, 32.14424]
  end
end