class ControllerPolicy
  attr_reader :user, :controller

  def initialize(user, controller)
    @user = user
    @controller = controller
  end

  def index?
    admin?
  end

  def show?
    admin?
  end

  def create?
    admin?
  end

  def new?
    create?
  end

  def update?
    admin?
  end

  def edit?
    update?
  end

  def destroy?
    admin?
  end
  
  def admin?
	@user.roles.include?(Role.find_by(title: "administrator"))	  
  end

end
