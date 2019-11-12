# frozen_string_literal: true

class User::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
    @user = User.where(email: params["user"]["email"])
    @user.update(online_status_params)
  end

  # DELETE /resource/sign_out
  def destroy
    @user = User.find(current_user.id)
    @user.update(:online_status => 'false')
    super

  end

  private
    def online_status_params
      params.require(:user).permit(:online_status)
    end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end