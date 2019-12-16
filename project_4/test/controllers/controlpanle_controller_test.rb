require 'test_helper'

class ControlpanleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get controlpanle_index_url
    assert_response :success
  end

  test "should get new" do
    get controlpanle_new_url
    assert_response :success
  end

  test "should get create" do
    get controlpanle_create_url
    assert_response :success
  end

  test "should get destroy" do
    get controlpanle_destroy_url
    assert_response :success
  end

end
