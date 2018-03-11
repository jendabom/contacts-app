class V2::ContactsController < ApplicationController
  def index
    contacts = Contact.all
    render json: contacts.as_json
  end

  def create
    contact = Contact.new(
      first_name: params[:input_first_name], 
      last_name: params[:input_last_name], 
      email: params[:input_email]
    )
    contact.save
    render json: contact.as_json
  end

  def show
    id = params[:id]
    contact = Contact.find(id)
    render json: contact.as_json
  end

  def update
    id = params[:id]
    contact = Contact.find(id)
    Contact.update(
      first_name: params[:input_first_name], 
      last_name: params[:input_last_name], 
      email: params[:input_email]
    )
    render json: { message: "The contact was updated."}
  end

  def destroy
    id = params[:id]
    contact = Contact.find(id)
    contact.destroy
    render json: { message: "The contact was deleted."}
  end
end
