module ContactsHelper
	def error_message(input_for)
		if !@contact.nil? && @contact.errors.any? 
			message = @contact.errors.full_messages_for(input_for).first
		end
	end
end
