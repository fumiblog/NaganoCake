class Public::HomesController < ApplicationController

  def top
    @items = Item.all
    if params[:genre_id] === nil
      @order_details =   OrderDetail.group(:item_id).order('count(item_id) desc').limit(3)
    else
      # byebug
      @order_details = OrderDetail.where.Item.where(params[:genre_id])
    end
    @genres = Genre.all
  end

  def top2

  end

  def about
  end

end
