class LineItemsController < ApplicationController
  def create

  	@line_item = current_cart.line_items.new  line_item_params
  	 if @line_item.save
		  redirect_to cart_path, notice: '􏰂􏰃􏰀􏰁Successfully create' 
	   else
	 	# 為何這樣 不知道
	 	 @product = @line_item.product
      	render 'products/show'
     end
	 end



  def update

      respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy


    # 會先刪除一次 在執行  @line_item.destroy 
    # 結果就發生了undefined method `destroy' for nil:NilClass的事情了 
    @line_item = LineItem.find_by_id(params[:id])
    @line_item.destroy

    redirect_to 'cart#show'



  end

  private 
  	def  line_item_params
  		 params.require(:line_item).permit(:quantity, :product_id)
  	end
end
