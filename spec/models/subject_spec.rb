require 'spec_helper'

describe Subject do
  #pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = FactoryGirl.create(:user)
    @subject = Subject.new(name: 'programming', hours:200, user_id: @user.id)
  end

  subject { @subject }


  it { should respond_to(:name) }
  it { should respond_to(:hours) }
  it { should respond_to(:remarks) }
  it { should respond_to(:evaluable_items) }
  it { should respond_to(:students) }
  it { should respond_to(:user) }
  it { should be_valid }


  describe "when name is not present" do
    before { @subject.name = " " }
    it { should_not be_valid }
  end

  describe "when hours is not present" do
    before { @subject.hours = " " }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @subject.user_id = " " }
    it { should_not be_valid }
  end

  describe "when name has taken for the same user" do
    before do
      @another_subject = Subject.create(name: 'programming', hours:200, user_id: @user.id)
    end
    it { should_not be_valid }
  end

  describe "when name has taken for a different user" do
    before do
      @another_user = FactoryGirl.create(:user)
      @another_subject = Subject.create(name: 'programming', hours:200, user_id: @another_user.id)
    end
    it { should be_valid }
  end
end