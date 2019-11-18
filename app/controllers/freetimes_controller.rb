# frozen_string_literal: true

class FreetimesController < ApplicationController

  def index
    @freetimes = Freetime.where("user_id = #{current_user.id}").order('time ASC')
  end

  def new
    if params[:counter] == "increase"
      session[:freetime_counter] = session[:freetime_counter] + 1
      @datetime = DateTime.current.beginning_of_day().advance(:days => session[:freetime_counter])
    elsif params[:counter] == "decrease"
      session[:freetime_counter] = session[:freetime_counter] - 1
      @datetime = DateTime.current.beginning_of_day().advance(:days => session[:freetime_counter])
    else
      session[:freetime_counter] = 0
      @datetime = DateTime.current
    end 
   end

  def create
    isduplicate = false
    params[:freetime][:time].each do |time|
      something = Freetime.new(time: DateTime.parse(time), user_id: current_user.id)
      # something.save!


      if something.save
        
      else
        isduplicate = true
        # render plain: schedule_params
        if params[:counter] == "increase"
          session[:freetime_counter] = session[:freetime_counter] + 1
          @datetime = DateTime.current.beginning_of_day().advance(:days => session[:freetime_counter])


        elsif params[:counter] == "decrease"
          session[:freetime_counter] = session[:freetime_counter] - 1
          @datetime = DateTime.current.beginning_of_day().advance(:days => session[:freetime_counter])

        else
          session[:freetime_counter] = 0
          @datetime = DateTime.current

        end 
        
      end


    end
    if isduplicate == true 
      render "new"
    else 
      redirect_to freetimes_path
    end
  end

  def show; end

  def edit
    @freetime = Freetime.find(params[:id])
  end
  
  def destroy
    @freetime = Freetime.find(params[:id])
    @freetime.destroy
  
    respond_to do |format|
      format.html { redirect_to(freetimes_url) }
      format.xml  { head :ok }
    end
  end
end

private

def freetime_params
  params.require(:freetime).permit(:time)
end
