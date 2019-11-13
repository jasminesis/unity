class FreetimesController < ApplicationController
  def index
    @freetimes = Freetime.all

  end

  def new

  end

  def create

    params[:freetime][:time].each do|time| 
      something = Freetime.new(:time => time, :user_id => current_user.id)
      something.save!
     end

     redirect_to new_freetime_path
    # if @freetime.save!
      # render plain: freetime_params
    # else
      # render plain: "Failed"
    # end
  end

  def show
  end

  def edit
    @freetime = Freetime.find(params[:id])
  end
end

private

def freetime_params
  params.require(:freetime).permit(:time)
end
