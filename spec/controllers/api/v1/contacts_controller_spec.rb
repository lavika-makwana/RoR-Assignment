require 'rails_helper'

describe "create a contact route", :type => :request do
  before do
    post '/api/v1/contacts', params: { contact: {
                                        first_name: 'Test User',
                                        last_name: 'Last',
                                        email: 'testuser@yopmail.com',
                                        phone_number: '123456789',
                                        message: 'Any Test Message'
                                      } }
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end