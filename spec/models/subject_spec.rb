require 'spec_helper'

describe Subject do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @subject = Subject.new(name: 'Programación', hours:200)
  end

  subject { @subject }


  it { should respond_to(:name) }
  it { should respond_to(:hours) }

  it { should respond_to(:marks) }
  it { should respond_to(:students) }

  describe "when name is not present" do
    before { @subject.name = " " }
    it { should_not be_valid }
  end

  describe "when hours is not present" do
    before { @subject.hours = " " }
    it { should_not be_valid }
  end


end
