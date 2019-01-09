class DrilldownAdminController < ApplicationController
  def index
    @drilldowns = DrilldownAdmin.all
  end

  def show
    @new_drilldown = DrilldownAdmin.find(params[:id])
    redirect_to drilldown_admin_index_path
  end

  def new
    new_drilldown_admins = DrilldownAdmin.new  
  end

  def edit
    @edit_drilldown_admins = DrilldownAdmin.find(params[:id])
  end

  def create
    new_drilldown = DrilldownAdmin.new(category_name: params["category_name"], drilldown_name: params["drilldown_name"])

    if new_drilldown.save
      redirect_to new_drilldown
    else
      render 'new'
    end

  end

  def update
    update_drilldown_admins = DrilldownAdmin.find(params[:id])
   
    if update_drilldown_admins.update(drilldown_params)
      redirect_to drilldown_admin_index_path
    else
      render 'edit'
    end
  end

  def destroy 
    delete_drilldown_admins = DrilldownAdmin.find(params[:id])
    delete_drilldown_admins.destroy
    redirect_to drilldown_admin_index_path
  end
end

private
  def drilldown_params
    params.require(:drilldown_admin).permit(:category_name,:drilldown_name)
  end
