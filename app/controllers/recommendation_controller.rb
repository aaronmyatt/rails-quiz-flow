class RecommendationController < ApplicationController
  def index
    @category = session[:category]
    @drilldown = session[:drilldown]
    @questions = session[:questions]
  
  end
end
