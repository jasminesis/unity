class HomesController < ApplicationController



  def index
    if user_signed_in?
      @current_id = current_user.id
      @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
      @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
      @list = @friend_a.concat(@friend_b)
      @friends = User.where("id IN (?)",@list).order("id ASC")


      @schedules = Schedule.where("user_id = #{current_user.id}")
      @schedule_ids = SchedulesUser.where("user_id = #{current_user.id}").map{|x|x.schedule_id}
      @friend_schedule = Schedule.where("id In (?)", @schedule_ids)
    else
      render 'preLogin.html.erb'
    end
  end

  def api
    @current_id = current_user.id
    @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
    @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
    @list = @friend_a.concat(@friend_b)
    @friends = User.where("id IN (?)",@list).order("id ASC").to_json
    render plain: @friends
  end
end