class ContactsController < ApplicationController
  def index
      @contacts = Contact.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
     
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
      
    if @contact.save 
        flash[:success] = 'メールアドレスが登録されました！'
        redirect_to new_contact_path
    else
        flash.now[:danger] = 'メールアドレスが登録されませんでした'
        render new_contact_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:email)
  end
  
end
