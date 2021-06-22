class ContactMailer < ApplicationMailer
	default from: ENV['mailer_email']

  def welcome_email
    @contact = params[:contact]
    mail(to: @contact.email, subject: 'Welcome to the contact')
  end
end
