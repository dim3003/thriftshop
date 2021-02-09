class UserMailer < ApplicationMailer
  default from: 'thriftshopch@gmail.com'

  def welcome_email
    @url  = '/cart/confirmation'
    attachments.inline['logo.jpeg'] = File.read('app/assets/images/logo.jpeg')
    mail(to: 'andre.d3003@gmail.com', subject: 'Confirmation de commande')
  end
end
