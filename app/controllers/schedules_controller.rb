class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.where("user_id = #{current_user.id}")
  end

  def new
    @current_id = current_user.id
    @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
    @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
    @list = @friend_a.concat(@friend_b)
    @friends = User.where("id IN (?)",@list)
    @datetime = DateTime.current()


    if params[:user_id] && params[:date]
      puts "awesome"
      puts params[:user_id]
      puts params[:date]
      @datetime = DateTime.parse(params[:date])

    end

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
      @datetime = DateTime.current()

      render "new"
    end
  end


  def show
    @schedule = Schedule.find(params[:id])
    @user_id = current_user.id

    if @schedule.user_id == @user_id
      @true = true
    end

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

  def update
    @schedule = Schedule.find(params[:id])
    @schedule.user = current_user
    @schedule_id = params[:id]
    if @schedule.update(schedule_params)
      redirect_to @schedule
    else
      @current_id = current_user.id
      @friend_a = Friend.where(:user_id => current_user.id).map{|x|x.friend_user_id}
      @friend_b = Friend.where(:friend_user_id => current_user.id).map{|x|x.user_id}
      @list = @friend_a.concat(@friend_b)
      @friends = User.where("id IN (?)",@list)
      render "edit"
    end
  end


  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to root_path
  end
end

def schedule_params
  params.require(:schedule).permit(:event, :start_time, :user_ids => [])
end