class UserMailer < ApplicationMailer
  default from: 'thriftshopch@gmail.com'

  def welcome_email
    @order = params[:order]
    @items = params[:items]
    attachments.inline['logo.jpeg'] = File.read('app/assets/images/logo.jpeg')
    mail(to: ['thriftshopch@gmail.com',@order.email], subject: 'Confirmation de commande')
  end
end
