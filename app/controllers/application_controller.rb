class ApplicationController < ActionController::Base
  include ApplicationHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #To set up a controller with user authentication,
  # just add this before_action (assuming your devise model is 'User')
  before_action :authenticate_user!

  before_action :set_locale

  def set_locale
    I18n.locale = "es"
    #I18n.locale = params[:locale] || I18n.default_locale
  end
end
