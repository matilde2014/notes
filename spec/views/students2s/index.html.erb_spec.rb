require 'spec_helper'

describe "students2s/index" do
  before(:each) do
    assign(:students2s, [
      stub_model(Students2,
        :name => "Name"
      ),
      stub_model(Students2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of students2s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
