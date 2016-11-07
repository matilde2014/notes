require 'spec_helper'

describe "students2s/show" do
  before(:each) do
    @students2 = assign(:students2, stub_model(Students2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
