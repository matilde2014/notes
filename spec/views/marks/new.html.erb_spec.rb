require 'spec_helper'

describe "marks/new" do
  before(:each) do
    assign(:mark, stub_model(Mark,
      :value => 1.5,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new mark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", marks_path, "post" do
      assert_select "input#mark_value[name=?]", "mark[value]"
      assert_select "input#mark_description[name=?]", "mark[description]"
    end
  end
end
