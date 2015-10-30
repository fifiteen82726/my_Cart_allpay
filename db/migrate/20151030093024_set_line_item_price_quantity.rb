class SetLineItemPriceQuantity < ActiveRecord::Migration
  def change
  	change_column(:line_items, :unit_price, :decimal, {null: false})
  	change_column(:line_items, :quantity, :integer ,  {default: 1})

  end
end
