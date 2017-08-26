class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.find(params[:following_id])
    @following.following_id = current_user.id
    if @following.save
      redirect_to twits_path
    end
  end
end
