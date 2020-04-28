class UserMailer < ApplicationMailer
    def notification_email(show, user)
	    @show = show
	    mail(to: user.email, subject: "You got a new order!")
	  end
end
