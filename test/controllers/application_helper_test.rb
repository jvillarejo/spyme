require 'test_helper'

class ApplicationControllerTest < ActionController::TestCase
  test "current_location should return a location object" do
    assert_equal Spyme::Model::Location, @controller.view_context.current_location.class
  end

  test "current_location should return the location" do
    session[:latitude] = '54.34212'
    session[:longitude] = '32.14424'

    assert_equal [54.34212, 32.14424], @controller.view_context.current_location.coords
  end
end