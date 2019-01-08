class RecommendationController < ApplicationController
  def index
    @category = Category.last(4).pluck(:name)
    @drilldown = Drilldown.last(4).pluck(:name)
    @questions = Question.last(8).pluck(:name,:rating)
  
  end
end
