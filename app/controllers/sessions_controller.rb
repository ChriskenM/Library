class SessionsController < ApplicationController
  skip_before_action :require_sign_in, only: [:new, :create]
  before_action :redirect_if_signed_in, only: [:new, :create]

  allow_unauthenticated_access only: %i[new create]
  rate_limit to: 10, within: 3.minutes, only: :create, with: -> { redirect_to new_session_url, alert: "Try again later." }

  def new
    @user = User.new
  end

  def create
    if user = User.authenticate_by(params.permit(:email_address, :password))
      start_new_session_for user
      redirect_to after_authentication_url
    else
      redirect_to new_session_path, alert: "Try another email address or password."
    end
  end

  def destroy
    terminate_session
    redirect_to new_session_path, notice: "Signed out successfully."
  end

  private

  def redirect_if_signed_in
    if current_user
      redirect_to root_path, notice: "You are already signed in."
    end
  end

  def start_new_session_for(user)
    session[:user_id] = user.id
  end

  def terminate_session
    session.delete(:user_id)
  end
end

