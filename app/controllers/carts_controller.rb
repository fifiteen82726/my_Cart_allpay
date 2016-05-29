class CartsController < ApplicationController
  

  def show
  	@cart = Cart.find(current_cart)
  	@line_items = @cart.line_items.all

  	
  end

  def update
	if current_cart.update cart_params 
    redirect_to cart_path, notice: '􏰃􏰂􏰄已更新'
	
	else
      render :show
  end



end

def cart_params
    params.require(:cart).permit(line_items_attributes: [:id, :quantity])
end

end
