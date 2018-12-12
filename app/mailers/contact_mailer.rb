class ContactMailer < ActionMailer::Base
 default to: "info@myarticles.com"
#method for the contact information including which parameters are used 
 def contact_email(name, email, message)
 @name = name
 @email = email
 @message = message

 mail(from: email, subject: "Rishi's Articles Contact Form Message")
 end
end