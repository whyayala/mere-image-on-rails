class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def show
  	@user = User.find(current_user.id)
  	@appointments = @user.appointments
  end

end
