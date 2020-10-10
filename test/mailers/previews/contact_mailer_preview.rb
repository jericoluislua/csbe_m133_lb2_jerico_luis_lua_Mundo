# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/booking
  def booking
    contact = Contact.new(firstName: "Jerico", lastName: "Lua", email: "jericoluislua@yahoo.com.ph", subject: "some subject", message: "some message")
    ContactBookings.with(contact: contact).booking
  end

end
