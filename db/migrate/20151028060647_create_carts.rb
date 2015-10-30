class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :status, null: false, default: '新訂單'
      t.timestamps null: false
    end
  end
end
