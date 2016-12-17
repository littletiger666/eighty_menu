class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  private

  def authenticate_user!
    redirect_to '/auth/wechat' unless current_user
  end

  def current_user
    @__user ||= User.find_by_wechat_id(session[:uid])
  end

  def set_current_user(user)
    session[:uid] = user.wechat_id
  end
end
