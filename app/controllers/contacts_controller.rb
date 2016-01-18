class ContactsController < ApplicationController
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = 'Message sent. Thank you!'
      redirect_to new_contact_path
    else
      flash[:danger] = 'Sorry, your message has not been sent. Please make sure you are completing all required fields.'
      redirect_to new_contact_path
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end

end