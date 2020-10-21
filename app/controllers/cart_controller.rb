class CartController < ApplicationController
  def index
    @items = Item.all
  end

  def address
    
  end
end
