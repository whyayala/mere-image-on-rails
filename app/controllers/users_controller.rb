class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_user, :only => [:index, :show]
  
  def index
	if current_user.is_customer?
		redirect_to action: "show", id: current_user.id
	else
		@users = User.find_each	
	end
  end

  def show
  	@appointments = @user.appointments
  end

  private
  	def find_user
	  	@user = User.find(current_user.id)
  	end

end
