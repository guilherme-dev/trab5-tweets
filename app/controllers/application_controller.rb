class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ensure_admin!
    redirect_to "/", notice: 'Você não tem a permissão necessária' unless current_user.admin == true
  end
end