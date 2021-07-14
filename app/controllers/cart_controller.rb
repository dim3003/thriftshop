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
    @order = Order.new
    @order.name = params[:name]
    @order.firstname = params[:firstname]
    @order.email = params[:email]
    @order.street = params[:street]
    @order.postalCode = params[:postalcode]
    @order.city = params[:city]
    @order.purchase = params[:cart]
    @order.total = params[:total]
    @items = Item.all
    if @order.save
      UserMailer.with(order: @order, items: @items).welcome_email.deliver_now
    end
    @items.destroy(JSON.parse(params[:cart]))
  end

  private

  def address_resource_params
    params.require(:address).permit(:name, :firstname, :email, :street, :postalCode, :city)
  end

  def order_resource_params
    params.require(:address).permit(:name, :firstname, :email, :street, :postalCode,:city, :purchase, :total)
  end

end
