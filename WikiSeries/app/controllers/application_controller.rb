class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
private
  def user_not_authorized
    flash[:alert] = "Você não tem permissão para fazer esta ação"
    redirect_to(request.referrer || root_path)
  end
end
