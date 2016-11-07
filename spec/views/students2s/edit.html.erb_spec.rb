require 'spec_helper'

describe "students2s/edit" do
  before(:each) do
    @students2 = assign(:students2, stub_model(Students2,
      :name => "MyString"
    ))
  end

  it "renders the edit students2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students2_path(@students2), "post" do
      assert_select "input#students2_name[name=?]", "students2[name]"
    end
  end
end
