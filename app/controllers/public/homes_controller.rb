class Public::HomesController < ApplicationController

  def top
    @items = Item.all
    if params[:genre_id] === nil
      @order_details = OrderDetail.group(:item_id).order('count(item_id) desc').limit(5)
    else
      # byebug
      @genre_items = Item.where(genre_id: params[:genre_id])
      # byebug
      @order_details = OrderDetail.group(item_id: @genre_items.ids.to_s)
      # byebug
    end
    @genres = Genre.all
  end

  def top2

  end

  def about
  end

end
