require 'spec_helper'

describe "confirmations/new.html.erb" do
  before(:each) do
    assign(:confirmation, stub_model(Confirmation,
      :confirmable_type => "MyString",
      :confirmable_id => 1,
      :code => "MyString",
      :action => "MyString"
    ).as_new_record)
  end

  it "renders new confirmation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => confirmations_path, :method => "post" do
      assert_select "input#confirmation_confirmable_type", :name => "confirmation[confirmable_type]"
      assert_select "input#confirmation_confirmable_id", :name => "confirmation[confirmable_id]"
      assert_select "input#confirmation_code", :name => "confirmation[code]"
      assert_select "input#confirmation_action", :name => "confirmation[action]"
    end
  end
end
