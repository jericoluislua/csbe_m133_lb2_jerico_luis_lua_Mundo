require 'test_helper'

class DiscographyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get discography_index_url
    assert_response :success
  end

end
