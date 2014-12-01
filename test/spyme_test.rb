require 'test_helper'

class SpymeTest < ActionDispatch::IntegrationTest
  test "post to spyme should return success" do
    post '/spyme/locations'
    assert_response 201
  end
end
