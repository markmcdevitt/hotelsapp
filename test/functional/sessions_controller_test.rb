require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get newa" do
    get :newa
    assert_response :success
  end

  test "should get createa" do
    get :createa
    assert_response :success
  end

  test "should get destroya" do
    get :destroya
    assert_response :success
  end

end
