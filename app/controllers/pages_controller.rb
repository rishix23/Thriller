class PagesController < ApplicationController
 #method for redirecting user to the articles path if they are a current user
 def index
   if current_user
    redirect_to articles_path
   end
   @articles = Article.last(4)
  end
#method for the contact page
  def contact
  @contact = Contact.new
  end
#method for the about page
  def about
  end
end
