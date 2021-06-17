require 'rails_helper'

RSpec.describe Contact, type: :model do
 	it 'has a name' do
    contact = Contact.create!(first_name: 'Test First Name')
    expect(contact.first_name).to eq('Test First Name')
  end
  it 'has a first name' do
    skip
  end
  it 'has a last name' do
    skip
  end
  it 'has a email' do
    skip
  end
  it 'has a phone number' do
    skip
  end
  it 'has a message' do
    skip
  end
end