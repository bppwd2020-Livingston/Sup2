class Auth::UsersControllerPolicy < ControllerPolicy
  
    def update_roles?
        admin?
    end

end
