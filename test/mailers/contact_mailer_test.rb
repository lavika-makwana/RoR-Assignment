# frozen_string_literal: true
require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  def setup
    @contact = contact
  end

  test 'welcome' do
    email = Contact.welcome_email(@contact)
    assert_emails 1 do
      email.deliver_now
    end

    assert_equal email.to, [@contact.email]
    assert_equal email.from, ['makwanalavika.gmail.com']
    assert_equal email.subject, 'Welcome to our Application!'
    assert_match 'Thanks for joining and have a great day!', email.body.encoded
  end
end