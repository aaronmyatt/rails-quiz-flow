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
    question_session = session[:questions] = params[:questions]
    question_session.each do |key, value|
      question_details = Question.create(name: key, rating: value, user_id: session[:user])
    end
    redirect_to "/recommendation/index"
  end

end
