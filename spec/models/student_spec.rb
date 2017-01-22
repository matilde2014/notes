require 'spec_helper'

describe Student do

  before do
    @user = FactoryGirl.create(:user)
    @subject = FactoryGirl.create(:subject,user_id: @user.id)
    @student = FactoryGirl.build(:student, nif: '44703488k', user_id: @user.id)
  end

  subject { @student }

  it { should respond_to(:name) }
  it { should respond_to(:birthday) }
  it { should respond_to(:nif) }
  it { should respond_to(:address) }
  it { should respond_to(:phone) }
  it { should respond_to(:email) }
  it { should respond_to(:guardian_name) }
  it { should respond_to(:guardian_phone) }
  it { should respond_to(:guardian_email) }
  it { should respond_to(:former_studies) }
  it { should respond_to(:access_mode) }
  it { should respond_to(:remarks) }
  it { should respond_to(:enroll?) }
  it { should respond_to(:marks) }
  it { should respond_to(:subjects) }
  it { should respond_to(:user) }
  it { should be_valid }

  describe "when name is not present" do
    before { @student.name = " " }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @student.user_id = " " }
    it { should_not be_valid }
  end

  describe "when nif is not present" do
    before { @student.nif = " " }
    it { should_not be_valid }
  end

  describe "when email is not valid" do
    before { @student.email = "invalid" }
    it { should_not be_valid }
  end

  describe "when guardian email is not valid" do
    before { @student.guardian_email = "invalid" }
    it { should_not be_valid }
  end

  describe "when it has not been enroled to the subject" do
    before { @student.save }
    it { expect(@student.enroll?(@subject)).to be_false }
  end

  describe "when it has been enroled to the subject" do
    before do
      @student.save
      @student.subjects << @subject
    end
    it { expect(@student.enroll?(@subject)).to be_true }
  end

  describe "when nif has been taken for the same user" do
    before do
      @another_student = FactoryGirl.create(:student, nif: '44703488k', user_id: @user.id)
    end
    it { should_not be_valid }
  end

  describe "when nif has been taken for a different user" do
    before do
      @another_student = FactoryGirl.create(:student, nif: '44703488k')
    end
    it { should be_valid }
  end
end
