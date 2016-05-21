class RespondersController < ApplicationController

  def index
    @responders = Responder.all
    respond_to :json
  end
  
  def create
    @responder = Responder.new(responder_params(:create))
    @responder.save
  end 
  
  def show
    @responder = Responder.find_by_name(params[:name])
  end

  def update
    @responder = Responder.find_by_name(params[:name])
      if @responder.update_attributes(responder_params_edit)
        render :show
      end
    else
      redirect_to :back
    end
  end


private

  def responder_params
    params.require(:responder).permit(:name,:type,:capacity,:emergency_code)
  end

  def responder_params_edit
    params.require(:responder).permit(:name,:type,:capacity,:on_duty,:emergency_code)
  end


end