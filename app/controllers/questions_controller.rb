class QuestionsController < ApplicationController

  def index

    all_questions = QuestionAdmin.take(8)
    split = all_questions.each_slice(2).to_a
    # question=[]
    # session[:drilldown].each do |drilldown|
    #   for i in 1..2 do
    #     question.push("#{drilldown}:question#{i}")
    #   end
    # end
    @questions1 = split.fetch(0)
    @questions2 = split.fetch(1)
    @questions3 = split.fetch(2)
    @questions4 = split.fetch(3)

  end

  def form
    question_session = session[:questions] = params[:questions]
    question_session.each do |key, value|
      question_details = Question.create(name: key, rating: value, user_id: session[:user])
    end
    redirect_to "/recommendation/index"
  end

end
