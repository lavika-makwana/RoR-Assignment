require 'rails_helper'

RSpec.describe '/contacts', type: :request do
  let(:valid_attributes) do
    {
      first_name: '1',
      last_name: 'Test',
      email: 'test123@test.com',
      phone_number: '123456456',
      message: 'test message'
    }
  end

  let(:invalid_attributes) do
    {
      first_name: 'Test name',
      last_name: 'Last',
      email: 'testtest',
      phone_number: 'abcded'
    }
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_contact_url
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Contact' do
        expect do
          contact = Contact.new(valid_attributes)
          contact.save
          post contacts_url, params: { contact: valid_attributes }
        end.to change(Contact, :count).by(2)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Contact' do
        expect do
          post contacts_url, params: { contact: invalid_attributes }
        end.to change(Contact, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post contacts_url, params: { contact: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end
end