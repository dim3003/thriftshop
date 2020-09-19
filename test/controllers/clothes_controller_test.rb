require 'test_helper'

class ClothesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get clothes_show_url
    assert_response :success
  end

end
