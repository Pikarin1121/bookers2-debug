class RelationshipsController < ApplicationController
  def create
    current_user.follow(params[:user_id])
    redirect_to request.refer
  end

  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.refer
  end

  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @user = user.followers
  end
end