class RegistrationsController < Devise::RegistrationsController
 private
 #method for signing up and included parameters
 def sign_up_params
 params.require(:user).permit(
 :email,
 :password,
 :password_confirmation,
 :username,
 :firstname,
 :lastname
 )
 end
 #method for updating the account with parameters
 def account_update_params
 params.require(:user).permit(
 :email,
 :password,
 :password_confirmation,
 :current_password,
 :username,
 :firstname,
 :lastname
 )
 end
end