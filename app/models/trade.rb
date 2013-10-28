class Trade < ActiveRecord::Base
  attr_accessible :brokerage, :company_id, :price, :quantity, :trade_date, :type, :user_id
end
