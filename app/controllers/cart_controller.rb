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
  end

  private

  def address_resource_params
    params.require(:address).permit(:name, :firstname, :email, :street, :postalCode)
  end

end
