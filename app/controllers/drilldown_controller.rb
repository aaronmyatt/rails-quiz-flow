class DrilldownController < ApplicationController
  def index
    @drilldown = []
    session[:category].each do |category|
      for i in 1..4 do
        @drilldown.push("#{category}drilldown#{i}")
      end
    end
  end

  def form
    session[:drilldown]=params[:drilldown]
    redirect_to "/questions/index"
  end
end
