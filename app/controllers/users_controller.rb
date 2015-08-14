class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_user, :only => [:index, :show]
  
  def index
  end

  def show
  	@appointments = @user.appointments
  end

  private
  	def find_user
	  	@user = User.find(current_user.id)
  	end

end
