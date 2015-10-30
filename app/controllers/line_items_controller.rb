class LineItemsController < ApplicationController
  def create
  	@line_item = current_cart.line_item.new  line_item_params
  	 if @line_item.save
		redirect_to cart_path, notice: '􏰂􏰃􏰀􏰁Successfully create' 
	 else
	 	# 為何這樣 不知道
	 	@product = @line_item.product
      	render 'products/show'
    end
	 end

  end

  def update
  end

  def destroy
  end

  private 
  	def  line_item_params
  		 params.require(:line_item).permit(:quantity, :product_id)
  	end
end
