class Contact < ApplicationRecord
	validates :email, :message, presence: true
	validates :phone_number, numericality: true
	validates :first_name, :last_name, presence: { message: "must be given please" }
end
