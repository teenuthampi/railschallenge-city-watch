class EmergenciesController < ApplicationController
 
  before_action :emergency_method, only: [:show, :update, :edit]

  def index
    @emergencies = Emergency.all
    respond_to :json
  end

  def create
    @emergency = Emergency.new(emergency_params)
    if @emergency.save
      respond_to do |format|
         format.json {render :show}
      end
    end
  end

  def update
    if @emergency.response == Time.zone.now 
      if @emergency.update_attributes(emergency_params)
        render :show
      end
    else
      redirect_to :back
    end
  end

  private

  def emergency_method
    @emergency = Emergency.find_by_code!(params[:id])
  end

  def emergency_params
    params.require(:emergency).permit(:code,:fire_severity,:medical_severity, :police_severity,:resolved_at)
  end

end