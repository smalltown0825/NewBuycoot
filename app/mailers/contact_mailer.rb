class ContactMailer < ApplicationMailer
    default from: 'komachitoshiki1@gmail.com'

  def welcome_email
    @contact = params[:contact]
    mail(
      to: @contact.email,
      subject: 'Welcome To News Buycoot from Plainwood.lnc'
      )
  end
end
