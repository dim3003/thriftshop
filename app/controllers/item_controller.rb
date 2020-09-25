class ItemController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Idea.new(item_resource_params)
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


  private

  def idea_resource_params
    params.require(:idea).permit(:title, :photo_url, :done_count, :description)
  end

end
