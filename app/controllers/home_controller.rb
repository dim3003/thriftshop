class HomeController < ApplicationController
  def index
    @items = Item.all.most_recent
  end

  def attribute
  end
end
