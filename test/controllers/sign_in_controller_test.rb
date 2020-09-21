require 'test_helper'

class SignInControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sign_in_new_url
    assert_response :success
  end

  test "should get create" do
    get sign_in_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sign_in_destroy_url
    assert_response :success
  end

end
