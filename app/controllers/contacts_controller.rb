class ContactsController < ApplicationController
#method for new contact
 def new
 @contact = Contact.new
 end
#method for new contact create with given parameters
 def create
 @contact = Contact.new(contact_params)
 if @contact.save
 redirect_to root_path
 name = params[:contact][:name]
 email = params[:contact][:email]
 message = params[:contact][:message]
 ContactMailer.contact_email(name, email, message).deliver
 flash[:success] = "Thanks for the message, we will be in touch soon."
 else
 redirect_to pages_contact_path
 flash[:danger] = "Opps, there was a problem! Please fill out all the fields."

 end
 end



 private
#method showing the contact parameters
 def contact_params
 params.require(:contact).permit(:name, :email, :message)
 end
end