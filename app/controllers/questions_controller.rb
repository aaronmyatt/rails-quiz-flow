class QuestionsController < ApplicationController

  def index

    all_questions = QuestionAdmin.take(8)
    split = all_questions.each_slice(2).to_a

    @questions1 = split.fetch(0)
    @questions2 = split.fetch(1)
    @questions3 = split.fetch(2)
    @questions4 = split.fetch(3)

  end

  def form
    question_params = params[:questions]
    question_params.each do |key, value|
      question_details = Question.create(name: key, rating: value, user_id: User.last.id)
    end
    
    redirect_to recommendation_path
  end

end
