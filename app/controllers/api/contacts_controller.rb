class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jb"
  end
  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def create
    @contact = Contact.create(      
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      user_id: current_user.id
    )
    render 'show.json.jb'
  end
  
  def update
    # find the correct contact
    @contact = Contact.find_by(id: params[:id])
    # update that particular contact
    @contact.update(
      first_name: params[:first_name] || @contact.first_name,
      last_name: params[:last_name] || @contact.last_name,
      phone_number: params[:phone_number] || @contact.phone_number,
      email: params[:email] || @contact.email
    )
    render 'show.json.jb'
  end
  def destroy
    @contact = Contact.find_by(id: params[:id])
    render json: {message: "contact destroyed"}
  end
end