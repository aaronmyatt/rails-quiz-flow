class QuestionsController < ApplicationController
  
  def index
    session[:user] = 1
    @question=[]
    session[:drilldown].each do |drilldown|
      for i in 1..2 do
        @question.push("#{drilldown}question#{i}")
      end
    end
    @questions1 = @question[0..1]
    @questions2 = @question[2..3]
    @questions3 = @question[4..5]
    @questions4 = @question[6..7]

  end

  def form
    session[:questions] = params[:questions]
    session[:questions].each do |key, value|
      Question.create(name: key, rating: value, user_id: session[:user])
    end
    
    # question_session = session[:questions]=params[:questions]
    # question_session.each do |c|
    #   name = Question.create(rating: c, user_id: session[:user])
    # end

    # @@question.each do |x|
    #   name = Question.create(name: x, user_id: session[:user])
    # end
    redirect_to "/recommendation/index"
  end

end
