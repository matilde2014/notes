require 'spec_helper'

describe "evaluable_items/index" do
  before(:each) do
    assign(:evaluable_items, [
        stub_model(EvaluableItem,
                   :name => "Name",
                   :remarks => "MyText",
                   :subject_id => 1
        ),
        stub_model(EvaluableItem,
                   :name => "Name",
                   :remarks => "MyText",
                   :subject_id => 1
        )
    ])
  end

  it "renders a list of evaluable_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end