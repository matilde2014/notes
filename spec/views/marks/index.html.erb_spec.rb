require 'spec_helper'

describe "marks/index" do
  before(:each) do
    assign(:marks, [
      stub_model(Mark,
        :value => 1.5,
        :description => "Description"
      ),
      stub_model(Mark,
        :value => 1.5,
        :description => "Description"
      )
    ])
  end

  it "renders a list of marks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
