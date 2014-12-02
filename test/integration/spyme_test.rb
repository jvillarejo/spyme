require 'test_helper'

class SpymeTest < ActionDispatch::IntegrationTest
  def setup
    @params = { location: { latitude: 64.24145, longitude: 75.35536 } }
  end

  test "post to spyme should return success" do
    post '/spyme/locations', @params
    assert_response 201
  end

  test "post to spyme should store coords" do 
    post '/spyme/locations', @params

    assert_equal session[:latitude], '64.24145'
    assert_equal session[:longitude], '75.35536'
  end

  test 'post to spyme should not throw bad request when empty' do 
    post '/spyme/locations', {}

    assert_response 400
  end
end
