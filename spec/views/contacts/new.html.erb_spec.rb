require 'rails_helper'

RSpec.describe 'contacts/new', type: :view do
  before(:each) do
    assign(:contact, Contact.new(
                    first_name: 'MyString',
                    last_name: 'MyText',
                    email: 'test@test.com',
                    message: 'Test message'
                  ))
  end

  it 'renders new contact form' do
    render

    assert_select 'form[action=?][method=?]', contacts_path, 'post' do
      assert_select 'input[name=?]', 'contact[first_name]'
      assert_select 'input[name=?]', 'contact[last_name]'
      assert_select 'input[name=?]', 'contact[phone_number]'
      assert_select 'textarea[name=?]', 'contact[message]'
    end
  end
end