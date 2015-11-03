class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])

  	#看不懂這句的意思是？
  	@line_item = current_cart.line_items.find_or_initialize_by(product: @product)

  end
end
