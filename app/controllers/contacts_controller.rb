class ContactsController < ApplicationController
	#POST /contacts
	def index
	end

	def new
    @contact = Contact.new
  end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			flash[:success] = t('controllers.contacts.flash_success')
			ContactMailer.with(contact: @contact).welcome_email.deliver_now
			redirect_to contacts_url
		else
			flash[:error] = t('controllers.contacts.flash_error')
			render :new
		end
	end

private 
  def contact_params
    params.require(:contact).permit(
						      :first_name,
						      :last_name,
						      :phone_number,
						      :email,
						      :message
    )
  end
end
