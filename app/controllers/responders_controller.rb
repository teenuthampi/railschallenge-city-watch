class RespondersController < ApplicationController

  def index
    @responders = Responder.all
    respond_to :json
  end
  
  def create
    @responder = Responder.new(responder_params(:create))
    @responder.save
  end 

  private

  def responder_params
    params.require(:responder).permit(:name,:type,:capacity,:on_duty,:emergency_code)
  end


end