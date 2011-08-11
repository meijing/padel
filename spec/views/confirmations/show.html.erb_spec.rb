require 'spec_helper'

describe "confirmations/show.html.erb" do
  before(:each) do
    @confirmation = assign(:confirmation, stub_model(Confirmation,
      :confirmable_type => "Confirmable Type",
      :confirmable_id => 1,
      :code => "Code",
      :action => "Action"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Confirmable Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Action/)
  end
end
