class ItemController < ApplicationController
  def new
  end

  def show
    @items = Item.all
  end
end
