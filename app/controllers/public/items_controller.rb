class Public::ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @genres = Genre.all
  end
  
  def show
    @item = Item.find(params[:id])
    @genres = Genre.all
  end
  
  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :genre_id, :price, :is_active)
  end
  
end
