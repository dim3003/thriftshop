class CartController < ApplicationController
  def index
    @items = Item.all
  end
end
