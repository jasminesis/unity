class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @current_id = current_user.id
    @user_id = @user.id
    if @user_id == @current_id
      @myself = "Myself"
    else
      @relationship = Friend.where("(user_id = ? AND friend_user_id = ?) OR (user_id = ? AND friend_user_id = ?)", @user, @current_id, @current_id, @user)
    end
  end
end