require 'spec_helper'

describe Mark do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @mark = Mark.new(value: 0, description:'Rellenar')
  end

  subject { @mark }

  it { should respond_to(:value) }
  it { should respond_to(:description) }
  it { should respond_to(:mdate) }

  describe "when value is not present" do
    before { @mark.value = " " }
    it { should_not be_valid }
  end

  describe "when description is not present" do
    before { @mark.description = " " }
    it { should_not be_valid }
  end

  describe "when mdate is not present" do
    before { @mark.mdate = " " }
    it { should_not be_valid }
  end

end
