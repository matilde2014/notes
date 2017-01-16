require 'spec_helper'

describe "evaluable_items/new" do
  before(:each) do
    assign(:evaluable_item, stub_model(EvaluableItem,
                                       :name => "MyString",
                                       :remarks => "MyText",
                                       :subject_id => 1
    ).as_new_record)
  end

  it "renders new evaluable_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", evaluable_items_path, "post" do
      assert_select "input#evaluable_item_name[name=?]", "evaluable_item[name]"
      assert_select "textarea#evaluable_item_remarks[name=?]", "evaluable_item[remarks]"
      assert_select "input#evaluable_item_subject_id[name=?]", "evaluable_item[subject_id]"
    end
  end
end