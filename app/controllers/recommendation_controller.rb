class RecommendationController < ApplicationController
  def index

    user = User.find_by(id: session[:user])
    @category = user.categories
    @drilldown = user.drilldowns
    @questions = user.questions

  
  end
end
