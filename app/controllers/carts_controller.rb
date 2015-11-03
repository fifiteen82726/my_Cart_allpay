class CartsController < ApplicationController
  def show
  	@cart = Cart.find(current_cart)
  	@line_items = @cart.line_items.all
  end
end
