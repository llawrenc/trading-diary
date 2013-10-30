require 'spec_helper'

describe "holdings/show" do
  before(:each) do
    @holding = assign(:holding, stub_model(Holding,
      :user_id => 1,
      :company_id => 2,
      :quantity => 3,
      :avg_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/1.5/)
  end
end
