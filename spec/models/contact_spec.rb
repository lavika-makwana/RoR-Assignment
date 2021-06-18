require 'rails_helper'

RSpec.describe Contact, type: :model do    
  context 'validation test' do
    it 'ensures first name presence' do
      contact = Contact.create(
                      last_name: 'last', 
                      phone_number: '123456789', 
                      email: 'sample@example.com',
                      message: 'Sample message'
                    ).save
      expect(contact).to eq(false)
    end
  end

  context 'when email has correct format' do
    it 'accepts valid format' do
    email = 'test@test.com'
      expect(email).to eq ('test@test.com')
    end
  end
  context 'when message is nil' do
    let(:message) { Contact.new(message: nil) }

    it 'is not valid' do 
      expect(message).to_not be_valid
    end
  end
end