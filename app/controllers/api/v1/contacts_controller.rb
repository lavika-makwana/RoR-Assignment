class Api::V1::ContactsController < ApplicationController

	# POST /contacts

	def create
    @contact = Contact.new(contact_params)
    unless @contact.save
      render json: @contact.errors, status: 422
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