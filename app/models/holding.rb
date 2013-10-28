class Holding < ActiveRecord::Base
  attr_accessible :avg_price, :company_id, :date_sold, :purchase_date, :quantity, :user_id
end
