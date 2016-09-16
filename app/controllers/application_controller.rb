class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Add flash notice types that align with Suit .alert-box classes
  add_flash_types :alert, :warning, :info, :success
end
