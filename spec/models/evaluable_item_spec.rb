require 'spec_helper'

describe EvaluableItem do
  before do
    @subject = FactoryGirl.create(:subject)
    @evaluable_item = EvaluableItem.new name: "first evaluation", subject_id: @subject.id, weight: 0.5, remarks: "Lorem ipsum"
  end

  subject { @evaluable_item }

  it { should respond_to(:name) }
  it { should respond_to(:subject) }
  it { should respond_to(:remarks) }
  it { should respond_to(:weight) }
  it { should be_valid }

  describe "when it has no name" do
    before { @evaluable_item.name = " " }
    it { should_not be_valid }
  end

  describe "when it has no weight" do
    before { @evaluable_item.weight = nil }
    it { should_not be_valid }
  end

  describe "when its name has been taken for the same subject" do
    before do
      @another_evaluable_item = EvaluableItem.create name: "first evaluation", subject_id: @subject.id, weight: 0.5, remarks: "Lorem ipsum"
    end
    it { should_not be_valid }
  end

  describe "when its name has been taken for another subject" do
    before do
      @another_subject = FactoryGirl.create(:subject)
      @another_evaluable_item = EvaluableItem.create name: "first evaluation", subject_id: @another_subject.id, weight: 0.5, remarks: "Lorem ipsum"
    end
    it { should be_valid }
  end
end