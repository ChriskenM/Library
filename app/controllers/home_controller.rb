class HomeController < ApplicationController
  skip_before_action :require_sign_in, only: [:index]
  before_action :require_sign_in, only: [:user]
  def index
  end

  def user
  end

  def books
  end
end
