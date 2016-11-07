require 'spec_helper'

describe "students2s/new" do
  before(:each) do
    assign(:students2, stub_model(Students2,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new students2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students2s_path, "post" do
      assert_select "input#students2_name[name=?]", "students2[name]"
    end
  end
end
