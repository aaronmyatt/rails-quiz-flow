class QuestionsController < ApplicationController
  def index
    question=[]
    session[:drilldown].each do |drilldown|
      for i in 1..2 do
        question.push("#{drilldown}question#{i}")
      end
    end
    @questions1 = question[0..1]
    @questions2 = question[2..3]
    @questions3 = question[4..5]
    @questions4 = question[6..7]

  end

  def form
    session[:questions]=params[:questions]
    redirect_to "/recommendation/index"
  end

end
