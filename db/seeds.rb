# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
Cart.destroy_all



20.times do |i|
	Product.create(
		name: "product no.#{i}", description: "description no.#{i}",
		price: (rand(10) + 1) * 50, stock: rand(91) + 10
		)
end
cart = Cart.create

Product.all.sample(5).each do |product|
	cart.line_items.create(product: product, unit_price: product.price, quantity: rand(4) + 1)
end



paid_order = Order.create(name: 'Tony',address: '􏰆􏰄樹林')

	Product.all.sample(5).each do |product|
		paid_order.line_items.create(unit_price: product.price, quantity: rand(4) + 1)
	end
	


#paid_order.trades.create paid: true

# unpaid_order = Order.create name: 'Jason', address: '􏰅􏰂', payment_method: 'ATM' unpaid_order.line_items.create(
# 	product: Product.all.sample, unit_price: 456, quantity: 2
# 	)
# unpaid_order.trades.create paid: false
