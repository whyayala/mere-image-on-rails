require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  # Needed for Devise compatibility
  include Devise::TestHelpers  
  # End of Devise Compatibility
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
