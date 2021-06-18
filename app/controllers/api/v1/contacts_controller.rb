class Api::V1::ContactsController < ApplicationController

	# POST /contacts
	def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact, status: :created
      ContactMailer.with(contact: @contact).welcome_email.deliver_now
    else
      render json: @contact, status: :not_created
      # return redirect_to contacts_path(contact_errors: @contact.errors.full_messages)
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