require 'spec_helper'

describe "trades/show" do
  before(:each) do
    @trade = assign(:trade, stub_model(Trade,
      :user_id => 1,
      :company_id => "Company",
      :quantity => 2,
      :type => "Type",
      :price => 1.5,
      :brokerage => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Company/)
    rendered.should match(/2/)
    rendered.should match(/Type/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
