require 'spec_helper'

describe "evaluable_items/edit" do
  before(:each) do
    @evaluable_item = assign(:evaluable_item, stub_model(EvaluableItem,
                                                         :name => "MyString",
                                                         :remarks => "MyText",
                                                         :subject_id => 1
    ))
  end

  it "renders the edit evaluable_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", evaluable_item_path(@evaluable_item), "post" do
      assert_select "input#evaluable_item_name[name=?]", "evaluable_item[name]"
      assert_select "textarea#evaluable_item_remarks[name=?]", "evaluable_item[remarks]"
      assert_select "input#evaluable_item_subject_id[name=?]", "evaluable_item[subject_id]"
    end
  end
end