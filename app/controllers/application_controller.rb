class ApplicationController < ActionController::Base
  helper_method :current_user, :authenticated?
  include Authentication

  layout :determine_layout

  private

  def determine_layout
    "application"
  end

  def stop_current_session
    session.delete(:user_id)
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_user?
    current_user.present?
  end

  def authenticated?
    current_user.present?
  end

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
