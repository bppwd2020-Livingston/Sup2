class Auth::QuestionsController < ApplicationController

  before_action :authenticate_user!

  def index
    @questions = Question.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])    
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
  
  def edit
  	@question = Question.find(params[:id]) 
  end
  
  def update
  	@question = Question.find(params[:id]) 
  	if @question.update(question_params)
	  	redirect_to auth_questions_index_path
	else
		render auth_questions_new_path
	end
  end
  
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to auth_questions_index_path
  end
  

  private

  def question_params
    params.require(:question).permit(:user_id, :title, :body, :whyt)
  end

end
