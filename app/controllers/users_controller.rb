class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @games = Game.all
    @users = User.where.not(id: current_user.id)


    #find all my friends!
    if user_signed_in?
      # # get all your friends in an array
      @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
      @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
      @list = @friend_a.concat(@friend_b)
      @friends = User.where("id IN (?)",@list)
      end

  end

  def show
    @user = User.find(params[:id])
    @current_id = current_user.id
    @user_id = @user.id
    @myfreetime = Freetime.where("user_id = #{current_user.id}").order('time ASC')

    if @user_id == @current_id
      @myself = "Myself"
    else
      @relationship = Friend.where("(user_id = ? AND friend_user_id = ?) OR (user_id = ? AND friend_user_id = ?)", @user_id, @current_id, @current_id, @user_id)
    end
  end
end