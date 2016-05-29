class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.references :order, index: true, foreign_key: true
      t.string :trade_number
      t.boolean :paid
      t.text :params

      t.timestamps null: false
    end
    add_index :trades, :trade_number
  end
end
