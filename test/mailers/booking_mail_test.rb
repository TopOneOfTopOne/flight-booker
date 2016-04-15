require 'test_helper'

class BookingMailTest < ActionMailer::TestCase
  test '#test_confirmaation_email' do
    BookingMail.confirmation_email(passengers(:passenger_1)).deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
  end
end
