class Cart < ActiveRecord::Base
	has_many :line_items , dependent: :destroy
	accepts_nested_attributes_for :line_items
	validates_associated :line_items

end
