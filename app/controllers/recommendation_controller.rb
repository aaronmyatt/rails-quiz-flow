class RecommendationController < ApplicationController
  def index
    @category = sessions[:category]
  end
end
