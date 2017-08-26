class TwitsController < ApplicationController
  def index
    @twits = current_user.twits
  end

  def new
    @twit = current_user.twits.new
  end
end
