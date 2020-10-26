class CartController < ApplicationController
  def index
    @items = Item.all
  end

  def address
    @address = Address.new
  end

  def addressAJAX
  end

  def addressPOST
  end

  private

  def address_resource_params
    params.require(:address).permit(:name, :email, :street, :postalCode)
  end

end
