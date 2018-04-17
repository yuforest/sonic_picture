require 'test_helper'

class FavoritePostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorite_posts_index_url
    assert_response :success
  end

end
