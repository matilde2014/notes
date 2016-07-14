require 'spec_helper'

describe "marks/show" do
  before(:each) do
    @mark = assign(:mark, stub_model(Mark,
      :value => 1.5,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/Description/)
  end
end
