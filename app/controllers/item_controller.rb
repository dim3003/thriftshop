class ItemController < ApplicationController

  def new
    @item = Item.new
  end

  def create

  end

  def show
    @item = Item.find(params[:id])
  end

end
