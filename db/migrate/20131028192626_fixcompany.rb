class Fixcompany < ActiveRecord::Migration
  def change
    change_column :Trades, :company_id, :integer
  end
end
