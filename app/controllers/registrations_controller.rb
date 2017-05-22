class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:operator).permit(:name, :email, :password, :password_confirmation, :role)
  end

  def account_update_params
    params.require(:operator).permit(:name, :email, :password, :password_confirmation, :current_password, :role)
  end
end
