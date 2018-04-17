class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_url, notice: "#{favorite.post.user.name}さんの写真をお気に入りしました"
  end
  
  def destroy
    favorite = current_user.favorites.find_by(post_id: params[:post_id]).destroy
    redirect_to posts_url, notice: "#{favorite.post.user.name}さんの写真をお気に入り解除しました"
  end
end
