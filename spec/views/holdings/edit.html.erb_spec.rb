require 'spec_helper'

describe "holdings/edit" do
  before(:each) do
    @holding = assign(:holding, stub_model(Holding,
      :user_id => 1,
      :company_id => 1,
      :quantity => 1,
      :avg_price => 1.5
    ))
  end

  it "renders the edit holding form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => holdings_path(@holding), :method => "post" do
      assert_select "input#holding_user_id", :name => "holding[user_id]"
      assert_select "input#holding_company_id", :name => "holding[company_id]"
      assert_select "input#holding_quantity", :name => "holding[quantity]"
      assert_select "input#holding_avg_price", :name => "holding[avg_price]"
    end
  end
end
