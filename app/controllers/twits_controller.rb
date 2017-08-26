class TwitsController < ApplicationController
  def index
    @twits = current_user.twits
    @followers = current_user.followers
    @following = current_user.following
  end

  def new
    @twit = current_user.twits.new
  end

  def create
    @twit = current_user.twits.new(twit_params)
    if @twit.save
      redirect_to twits_path
    else
      render :new
    end
  end

  private
  def twit_params
    params.require(:twit).permit(:description, :user_id)
  end

end
