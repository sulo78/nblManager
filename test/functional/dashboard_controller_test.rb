require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get admin_dashboard" do
    get :admin_dashboard
    assert_response :success
  end

  test "should get user_dashboard" do
    get :user_dashboard
    assert_response :success
  end

end
