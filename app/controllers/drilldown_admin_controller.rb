class DrilldownAdminController < ApplicationController
  def index
    
    @drilldowns = DrilldownAdmin.all
  end

  def show
     @new_drilldown = DrilldownAdmin.find(params[:id])

  end

  def create
    @new_drilldown = DrilldownAdmin.new(drilldown_params)

    @new_drilldown.save
    redirect_to @new_drilldown

  end
end

private
  def drilldown_params
    params.require(:drilldown_admin).permit(:category_name, :drilldown_name)
  end
