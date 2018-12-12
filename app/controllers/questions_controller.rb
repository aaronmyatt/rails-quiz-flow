class QuestionsController < ApplicationController
  def index
  end

  def form
    redirect_to "/recommendation/index"
  end

end
