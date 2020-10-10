require 'test_helper'

class BookingMailerTest < ActionMailer::TestCase
  test "booking" do
    mail = BookingMailer.booking
    assert_equal "Booking", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
