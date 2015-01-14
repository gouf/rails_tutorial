class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].to_s.downcase)
    user_authenticate = user.try(:authenticate, params[:session][:password])
    if user.present? && user_authenticate.present?
      sign_in user
      redirecto_to user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirecto_to root_url
  end
end
