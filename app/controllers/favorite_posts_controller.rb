class FavoritePostsController < ApplicationController
  def index
    @favorite_posts = current_user.favorites
  end
end
