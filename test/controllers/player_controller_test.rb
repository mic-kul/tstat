require 'test_helper'

class PlayerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get history" do
    get :view
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
