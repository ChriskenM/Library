class UsersController < ApplicationController
  skip_before_action :require_sign_in, only: [:new, :create]
  before_action :redirect_if_signed_in, only: [:new, :create]


    def new
        @user = User.new
      end

      def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to root_path, notice: "Account created successfully!"
        else
          render :new
        end
      end

      private

      def redirect_if_signed_in
        if current_user
          redirect_to root_path, notice: "You are already signed in."
        end
      end

      def user_params
        params.require(:user).permit(:email_address, :password, :password_confirmation)
      end
end
