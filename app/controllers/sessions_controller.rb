class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    partner = Partner.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    unless partner.status
      redirect_to edit_partner_path(partner)
    else
      redirect_to dashboard_path
    end
    logger.debug env["omniauth.auth"]
  end

  def destroy
    session[:user_id] = nil
    redirect_to dashboard_path
  end
end
