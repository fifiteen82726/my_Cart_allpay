class CartsController < ApplicationController
  def show
  	@cart = Cart.find(current_cart)

  end
end
