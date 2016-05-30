class Trade < ActiveRecord::Base
  belongs_to :order
  after_initialize :generate_trade_number, if: :new_record
  
  def gemerate_trade_number
  	self.trade_number = SecureRandom.hex(3)
  end
end
