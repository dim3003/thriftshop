class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_resource_params)
    if(@item.save)
      redirect_to items_path
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def add
    @item = Item.find(params[:item])
  end

  def remove
    @item = Item.find(params[:item])
  end

  def destroy
  end


  private

  def item_resource_params
    params.require(:item).permit(:title, :price, :photo_url, :photo_url2, :photo_url3, :size, :description)
  end

end
