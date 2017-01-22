require 'spec_helper'

describe Mark do
  before do
    @student = FactoryGirl.create(:student)
    @evaluable_item = FactoryGirl.create(:evaluable_item)
    @mark = Mark.new(value: 9.5, student_id: @student.id, evaluable_item_id: @evaluable_item.id)
  end

  subject { @mark }

  it { should respond_to(:value) }
  it { should respond_to(:evaluable_item) }
  it { should respond_to(:student) }

  describe "when the mark is valid" do
    it { should be_valid }
  end

  describe "when value is not present" do
    before { @mark.value = " " }
    it { should_not be_valid }
  end

  describe "when student_id is not present" do
    before { @mark.student_id = nil }
    it { should_not be_valid }
  end

  describe "when evaluable_item_id is not present" do
    before { @mark.evaluable_item_id = nil }
    it { should_not be_valid }
  end

  describe "when mark has been assigned for that student and evaluable item" do
    before do
      @another_mark = Mark.create(value: 6.5, student_id: @student.id, evaluable_item_id: @evaluable_item.id)
    end
    it { should_not be_valid }
  end

  describe "when a mark is set to another evaluable item for the same student" do
    before do
      @another_evaluable_item = FactoryGirl.create(:evaluable_item)
      @another_mark = Mark.create(value: 6.5, student_id: @student.id, evaluable_item_id: @another_evaluable_item.id)
    end
    it { should be_valid }
  end

  describe "when a mark is set to another student for the same evaluable item" do
    before do
      @another_student = FactoryGirl.create(:student)
      @another_mark = Mark.create(value: 6.5, student_id: @another_student.id, evaluable_item_id: @evaluable_item.id)
    end
    it { should be_valid }
  end
end