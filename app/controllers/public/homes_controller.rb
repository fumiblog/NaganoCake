class Public::HomesController < ApplicationController

  def top
    @items = Item.all
    # binding.pry
    @order_details =   OrderDetail.group(:item_id).order('count(item_id) desc').limit(3) #.pluck(:item_id)
    # byebug
    @genres = Genre.all
  end

  def top2

  end

  def about
  end

end
