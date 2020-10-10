class ContactBookings < ApplicationMailer
  default from: "ivofspadesbyjerico@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_bookings.booking.subject
  #

  layout "mailer"

  def booking(contact)
    @contact = contact
    mail(:from => @contact.email, :subject => "test", :body => "asdfsa")
  end
end
