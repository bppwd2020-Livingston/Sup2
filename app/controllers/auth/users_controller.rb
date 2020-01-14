class Auth::UsersController < ApplicationController

	#before_action :authenticate_user!
	#before_action {authorize self}

  def index
	@users = User.order(email: :asc)
	@roles = Role.all
  end

  def update_roles
	user = User.find(params[:id])
	user.roles = []
	Role.all.each do |r|
		if params[r.title]
			user.roles << r
		end
	end

  	redirect_to auth_users_index_path
  end

end
