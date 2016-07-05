require 'spec_helper'

describe Student, :type => :feature do

  before do
    @student = Student.new(name: 'Example User', birthday: '01/01/1970')
  end

  subject { @student }


  it { should respond_to(:name) }
  it { should respond_to(:birthday) }

  describe "when name is not present" do
    before { @student.name = " " }
    it { should_not be_valid }
  end
end
