class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  # To redirect users to a specific page on successful sign in/out
  #protected
  
  #def after_sign_in_path_for(resource)
    # return the path based on resource
  #end

end
