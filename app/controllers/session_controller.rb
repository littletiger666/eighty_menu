class SessionController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    auth = request.env['omniauth.auth']
    if auth[:uid] && auth[:info]
      user = User.where(wechat_id: auth[:uid]).first_or_create
      user.update_attributes(user_attrs(auth))
      set_current_user(user)
      redirect_to user_path(user)
    end
  end

  def destroy
  end

  def failure
  end

  private

  def user_attrs(auth)
    {
      wechat_id: auth[:uid],
      wechat_name: auth[:info][:nickname],
      avatar: auth[:info][:headimgurl],
      province: auth[:info][:province],
      city: auth[:info][:city]
    }
  end
end
