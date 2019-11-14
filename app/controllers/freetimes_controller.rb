# frozen_string_literal: true

class FreetimesController < ApplicationController
  def index
    @freetimes = Freetime.where("user_id = #{current_user.id}")
  end

  def new
    if params[:newdate]
      @datetime = DateTime.parse(params[:newdate])
    else      
      @datetime = DateTime.now
    end
   end

  def create
    params[:freetime][:time].each do |time|
      something = Freetime.new(time: time, user_id: current_user.id)
      something.save!
    end

    redirect_to freetimes_path
    # if @freetime.save!
    # render plain: freetime_params
    # else
    # render plain: "Failed"
    # end
  end

  def show; end

  def edit
    @freetime = Freetime.find(params[:id])
  end
end

private

def freetime_params
  params.require(:freetime).permit(:time)
end
