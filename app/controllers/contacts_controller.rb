class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactBookings.with(contact: @contact).booking.deliver_now
      flash[:success] = "Successfully sent email."
      redirect_to action: "new"
    else
      flash[:error] = @contact.errors.full_messages
      redirect_to action: "new"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:firstName, :lastName, :email, :subject, :message)
  end
end
