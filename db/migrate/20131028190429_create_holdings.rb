class CreateHoldings < ActiveRecord::Migration
  def change
    create_table :holdings do |t|
      t.integer :user_id
      t.date :purchase_date
      t.integer :company_id
      t.integer :quantity
      t.float :avg_price
      t.date :date_sold

      t.timestamps
    end
  end
end
