require 'test_helper'

class PortControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get make" do
    get :make
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get updae" do
    get :updae
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
