class LineItemsController < ApplicationController
  def create
    @cart = current_user.current_cart ||= Cart.new
    @cart.add_item(params[:item_id])
    @cart.save
    redirect_to cart_path(@cart)
  end
end
