require 'spec_helper'

describe "holdings/index" do
  before(:each) do
    assign(:holdings, [
      stub_model(Holding,
        :user_id => 1,
        :company_id => 2,
        :quantity => 3,
        :avg_price => 1.5
      ),
      stub_model(Holding,
        :user_id => 1,
        :company_id => 2,
        :quantity => 3,
        :avg_price => 1.5
      )
    ])
  end

  it "renders a list of holdings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
