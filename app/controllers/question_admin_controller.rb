class QuestionAdminController < ApplicationController
  def index
    @questions = QuestionAdmin.all
  end

  def new
    new_question_admins = QuestionAdmin.new
  end

  def show
    @new_question = QuestionAdmin.find(params[:id])
    redirect_to question_admin_index_path
  end

  def edit
    @edit_question = QuestionAdmin.find(params[:id])
  end

  def create
    new_question = QuestionAdmin.new(drilldown_name: params["drilldown_name"], question: params["question"])

    if new_question.save
      redirect_to question_admin_index_path
    else
      render 'new'
    end
  end

  def update
    update_question_admins = QuestionAdmin.find(params[:id])
   
    if update_question_admins.update(question_params)
      redirect_to question_admin_index_path
    else
      render 'edit'
    end
  end

  def destroy 
    delete_question_admins = QuestionAdmin.find(params[:id])
    delete_question_admins.destroy
    redirect_to question_admin_index_path
  end

end

private
  def question_params
    params.require(:question_admin).permit(:drilldown_name,:question)
  end

