class Fixtype < ActiveRecord::Migration
  def change
    rename_column :Trades, :type, :trade_type
  end
end
