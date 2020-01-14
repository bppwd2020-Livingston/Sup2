class Auth::ResponsesController < ApplicationController

  before_action :authenticate_user!
  before_action {authorize self}

  def index
    @responses = Response.order(created_at: :desc)
  end

  def show
    @response = Response.find(params[:id])
  end

  def new
    @response = Response.new
    @question = Question.find(params[:id])
  end

  def create
    @response = Response.new(response_params)
    if @response.save
      redirect_to auth_responses_index_path
    else
      render auth_responses_new_path
    end
  end

  def edit
  	@response = Response.find(params[:id])
  end

  def update
  	@response = Response.find(params[:id])
  	if @response.update(response_params)
	  	redirect_to auth_responses_index_path
	else
		render auth_responses_new_path
	end
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    redirect_to auth_responses_index_path
  end

  private

  def response_params
    params.require(:response).permit(:user_id, :question_id, :body, :zip_file)
  end

end
