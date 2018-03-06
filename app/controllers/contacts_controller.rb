class ContactsController < ApplicationController
  def show_the_contact
    contact = Contact.first
    render json: {first_name: contact.first_name, last_name: contact.last_name, email: contact.email, phone_number: contact.phone_number}
  end

  def show_all_contacts
    contacts = Contact.all
    list_of_contacts = []
    contacts.each do |x|
      list_of_contacts << {first_name: x.first_name, last_name: x.last_name, email: x.email, phone_number: x.phone_number}
    end
    render json: {contacts: list_of_contacts} 
  end
end
