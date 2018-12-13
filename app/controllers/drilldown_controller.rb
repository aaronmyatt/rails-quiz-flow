class DrilldownController < ApplicationController
  def index
    @category = session[:category]
  end

  def form
    session[:drilldown]=params[:drilldown]
    redirect_to "/questions/index"
  end
end
