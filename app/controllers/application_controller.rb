class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :image])
   devise_parameter_sanitizer.permit(:account_update, keys: [:nombre, :image])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
   devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
 end

 before_action :configure_permitted_parameters, if: :devise_controller?

#  ## Email prueba de envio de información
#  def send
#   @user = User.new(user_params)

#   respond_to do |format|
#     if @user.save

#       # Sends email to user when user is created.
#       ExampleMailer.sample_email(@user).deliver

#       format.html { redirect_to @user, notice: 'User was successfully created.' }
#       format.json { render :show, status: :created, location: @user }
#     else
#       format.html { render :new }
#       format.json { render json: @user.errors, status: :unprocessable_entity }
#     end
#   end
# end

# ## http://localhost:3000/rails/mailers/example_mailer/sample_mail_preview.html

end
