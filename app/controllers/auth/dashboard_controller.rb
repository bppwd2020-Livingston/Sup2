class Auth::DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
    @questions = Question.order(created_at: :desc).limit(5)
  end

end
