class DrilldownController < ApplicationController
  def index

      drilldown = []

      drilldowns = DrilldownAdmin.take(16)
      split = drilldowns.each_slice(4).to_a

      # session[:category].each do |category|
      #   for i in 1..4 do
      #     drilldown.push("#{category}:#{i}")
      #   end
      # end

       @drilldown1 = split.fetch(0)
       @drilldown2 = split.fetch(1)
       @drilldown3 = split.fetch(2)
       @drilldown4 = split.fetch(3)
       
  end

  def form
    drilldown_session = session[:drilldown]=params[:drilldown]
    drilldown_session.each do |drilldown|
      name = Drilldown.create(name: drilldown, user_id: session[:user])
    end
    redirect_to "/questions/index"
  end
end
