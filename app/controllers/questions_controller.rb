class QuestionsController < ApplicationController
  def index
    @question=[]
    session[:drilldown].each do |drilldown|
      for i in 1..4 do
        @question.push("#{drilldown}question#{i}")
      end
    end
  end

  def form
    session[:questions]=params[:questions]
    redirect_to "/recommendation/index"
  end

end
