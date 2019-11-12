class FriendsController < ApplicationController
  before_action :authenticate_user!

  def create
    @current_id = current_user.id
    @user_id = params["id"]

    @relationship = Friend.new(:user_id => @current_id, :friend_user_id => @user_id, :status => 'added')
    if @relationship.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    # My Id
    @current_id = current_user.id
    # The friend's Id
    @user_id = params["id"]
    @relationship = Friend.where("(user_id = ? AND friend_user_id = ?) OR (user_id = ? AND friend_user_id = ?)", @user_id, @current_id, @current_id, @user_id)
    @relationship[0].destroy
    redirect_to root_path
  end
end