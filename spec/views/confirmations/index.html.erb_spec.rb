require 'spec_helper'

describe "confirmations/index.html.erb" do
  before(:each) do
    assign(:confirmations, [
      stub_model(Confirmation,
        :confirmable_type => "Confirmable Type",
        :confirmable_id => 1,
        :code => "Code",
        :action => "Action"
      ),
      stub_model(Confirmation,
        :confirmable_type => "Confirmable Type",
        :confirmable_id => 1,
        :code => "Code",
        :action => "Action"
      )
    ])
  end

  it "renders a list of confirmations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Confirmable Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Action".to_s, :count => 2
  end
end
