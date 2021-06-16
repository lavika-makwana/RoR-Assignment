class ContactMailer < ApplicationMailer
	default from: 'makwanalavika@gmail.com'

  def welcome_email
    @contact = params[:contact]
    # @url  = 'http://example.com/login'
    mail(to: @contact.email, subject: 'Welcome to the contact')
  end
end
