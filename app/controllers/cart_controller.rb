class CartController < ApplicationController
  def index
    @items = Item.all
  end

  def address
    @address = Address.new
  end

  def addressAJAX
  end

  def payment
    @items = Item.all
  end

  def confirmation

    UserMailer.welcome_email.deliver_now
  end

  private

  def address_resource_params
    params.require(:address).permit(:name, :firstname, :email, :street, :postalCode)
  end

end
