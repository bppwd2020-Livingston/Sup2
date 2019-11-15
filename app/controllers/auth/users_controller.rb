class Auth::UsersController < ApplicationController
  
  def index
	@users = User.order(email: :asc)
	@roles = Role.all
  end
  
  def update_roles
	user = User.find(params[:id])
	user.roles = []
	Role.all.each do |r|
		puts params[r.title]
		if params[r.title]
			user.roles << r
		end
	end

  	redirect_to auth_users_index_path
  end
  
end
