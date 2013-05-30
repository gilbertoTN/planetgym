class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    partner = Partner.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to edit_partner_path(partner)
    logger.debug env["omniauth.auth"]
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
