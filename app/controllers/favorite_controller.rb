class FavoriteController < ApplicationController
  before_action :set_post
  before_action :logged_in_user
  
  def create
    if @micropost.user_id != current_user.id   # 投稿者本人以外に限定
      @favorite = Favorite.create(user_id: current_user.id, micropost_id: @micropost.id)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, micropost_id: @micropost.id)
    @favorite.destroy
  end

private

  def set_post
    @micropost = Post.find(params[:micropost_id])
  end
end