class Auth::ResponsesController < ApplicationController

  before_action :authenticate_user!

  def index
    @responses = Response.order(created_at: :desc)
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

  private

  def response_params
    params.require(:response).permit(:user_id, :question_id, :body)
  end

end
