class SchedulesController < ApplicationController


  def index
    @schedules = Schedule.all

  end

  def new

    if params[:user_id]
      puts "awesome"
    end

    @current_id = current_user.id
    @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
    @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
    @list = @friend_a.concat(@friend_b)
    @friends = User.where("id IN (?)",@list)
  end

  def create
    @schedule = Schedule.new(schedule_params)

    @schedule.user = current_user

    
    if @schedule.save

      redirect_to @schedule
    else
      # render plain: schedule_params
      @current_id = current_user.id
      @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
      @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
      @list = @friend_a.concat(@friend_b)
      @friends = User.where("id IN (?)",@list)
      render "new"
    end
  end

  def update
    @schedule = Schedule.new(schedule_params)

    @schedule.user = current_user
    @schedule_id = params[:id]
    
    if @schedule.save

      redirect_to @schedule
    else
      # render plain: schedule_params
      # @schedule = Schedule.find(params[:id])
      @current_id = current_user.id
      @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
      @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
      @list = @friend_a.concat(@friend_b)
      @friends = User.where("id IN (?)",@list)
      render "edit"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
    @schedule_id = params[:id]
    @current_id = current_user.id
    @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
    @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
    @list = @friend_a.concat(@friend_b)
    @friends = User.where("id IN (?)",@list)
    
  end

end

def schedule_params
  params.require(:schedule).permit(:event, :start_time, :user_ids => [])
end