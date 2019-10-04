class Auth::QuestionsController < ApplicationController

  before_action :authenticate_user!

  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to auth_questions_index_path
    else
      render auth_questions_new_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:user_id, :title, :body, :whyt)
  end

end
