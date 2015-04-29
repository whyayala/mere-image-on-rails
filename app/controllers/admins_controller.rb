class AdminsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
  	@users = User.all
  end

  def show
  	@admin = Admin.find(current_admin.id)
  end

end
