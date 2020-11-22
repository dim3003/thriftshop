class UserMailer < ApplicationMailer
  default from: 'andre.d3003@gmail.com'

  def welcome_email
    @url  = '/cart/confirmation'
    mail(to: 'andre.d3003@gmail.com', subject: 'THE EMAIL WORKS !')
  end
end
