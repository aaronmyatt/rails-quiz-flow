class DrilldownController < ApplicationController
  def index

      drilldown = []
      session[:category].each do |category|
        for i in 1..4 do
          drilldown.push("#{category}drilldown#{i}")
        end
      end

       @drilldown1 = drilldown[0..3]
       @drilldown2 =drilldown[4..7]
       @drilldown3 =drilldown[8..11]
       @drilldown4 =drilldown[12..15]
       
  end

  def form
    session[:drilldown]=params[:drilldown]
    redirect_to "/questions/index"
  end
end
