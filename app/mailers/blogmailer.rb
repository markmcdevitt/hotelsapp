class Blogmailer < ActionMailer::Base
  default from: "Markmcdevitt3@hotmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register(user) 
	if user
	   @url  = 'http://localhost:3000/signin'
   	   @user = user 
           mail(:to => user.email, :subject => "Welcome to Hotel Hunter")
    end 
  end 
end
