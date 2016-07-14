require 'spec_helper'

describe "marks/edit" do
  before(:each) do
    @mark = assign(:mark, stub_model(Mark,
      :value => 1.5,
      :description => "MyString"
    ))
  end

  it "renders the edit mark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mark_path(@mark), "post" do
      assert_select "input#mark_value[name=?]", "mark[value]"
      assert_select "input#mark_description[name=?]", "mark[description]"
    end
  end
end
