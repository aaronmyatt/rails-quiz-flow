class RecommendationController < ApplicationController
  def index
    @category = session[:category]
  end
end
