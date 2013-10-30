require 'spec_helper'

describe "trades/new" do
  before(:each) do
    assign(:trade, stub_model(Trade,
      :user_id => 1,
      :company_id => "MyString",
      :quantity => 1,
      :type => "",
      :price => 1.5,
      :brokerage => 1.5
    ).as_new_record)
  end

  it "renders new trade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trades_path, :method => "post" do
      assert_select "input#trade_user_id", :name => "trade[user_id]"
      assert_select "input#trade_company_id", :name => "trade[company_id]"
      assert_select "input#trade_quantity", :name => "trade[quantity]"
      assert_select "input#trade_type", :name => "trade[type]"
      assert_select "input#trade_price", :name => "trade[price]"
      assert_select "input#trade_brokerage", :name => "trade[brokerage]"
    end
  end
end
