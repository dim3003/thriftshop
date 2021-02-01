class UserMailer < ApplicationMailer
  default from: 'thriftshopch@gmail.com'

  def welcome_email
    @url  = '/cart/confirmation'
    mail(to: 'andre.d3003@gmail.com', subject: 'Confirmation de commande')
  end
end
