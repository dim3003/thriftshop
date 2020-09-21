require 'test_helper'

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get item_new_url
    assert_response :success
  end

  test "should get showindex" do
    get item_showindex_url
    assert_response :success
  end

end
