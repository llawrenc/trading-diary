class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.date :trade_date
      t.string :company_id
      t.integer :quantity
      t.string :type
      t.float :price
      t.float :brokerage

      t.timestamps
    end
  end
end
