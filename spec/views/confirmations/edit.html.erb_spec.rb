require 'spec_helper'

describe "confirmations/edit.html.erb" do
  before(:each) do
    @confirmation = assign(:confirmation, stub_model(Confirmation,
      :confirmable_type => "MyString",
      :confirmable_id => 1,
      :code => "MyString",
      :action => "MyString"
    ))
  end

  it "renders the edit confirmation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => confirmations_path(@confirmation), :method => "post" do
      assert_select "input#confirmation_confirmable_type", :name => "confirmation[confirmable_type]"
      assert_select "input#confirmation_confirmable_id", :name => "confirmation[confirmable_id]"
      assert_select "input#confirmation_code", :name => "confirmation[code]"
      assert_select "input#confirmation_action", :name => "confirmation[action]"
    end
  end
end
