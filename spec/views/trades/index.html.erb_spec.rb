require 'spec_helper'

describe "trades/index" do
  before(:each) do
    assign(:trades, [
      stub_model(Trade,
        :user_id => 1,
        :company_id => "Company",
        :quantity => 2,
        :type => "Type",
        :price => 1.5,
        :brokerage => 1.5
      ),
      stub_model(Trade,
        :user_id => 1,
        :company_id => "Company",
        :quantity => 2,
        :type => "Type",
        :price => 1.5,
        :brokerage => 1.5
      )
    ])
  end

  it "renders a list of trades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
