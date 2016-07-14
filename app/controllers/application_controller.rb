class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #To set up a controller with user authentication,
  # just add this before_action (assuming your devise model is 'User')
  #before_action :authenticate_user!
end
