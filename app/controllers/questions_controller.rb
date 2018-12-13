class QuestionsController < ApplicationController
  def index
    @category=session[:category]
  end

  def form
    redirect_to "/recommendation/index"
  end

end
