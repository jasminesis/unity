class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    
  end

  def new
  end

  def create
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
  end

end

def schedule_params
  params.require(:schedule).permit(:event, :start_time, :user_ids => [])
end