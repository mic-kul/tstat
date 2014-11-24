require 'test_helper'

class PlayerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get player" do
    get :view, {'name' => 'First player'}
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
