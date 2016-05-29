class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	has_many :products, through: :line_items, dependent: :destroy
	has_many :trades
end
