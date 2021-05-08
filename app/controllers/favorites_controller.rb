class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    current_user.favorite(params[:micropost_id])
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to likes_user_path(current_user)
  end

  def destroy
    current_user.unfavorite(params[:micropost_id])
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to likes_user_path(current_user)
  end
end
