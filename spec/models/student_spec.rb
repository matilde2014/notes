require 'spec_helper'

describe Student do

  before do
    @student = Student.new(name: 'Example User', birthday: '01/01/1970', nif: '44703488k')
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



  describe "when name is not present" do
      before { @student.name = " " }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @student.user_id = " " }
    it { should_not be_valid }
  end


  describe "when date is not present" do
    before { @student.birthday = " " }
    it { should_not be_valid }
  end

  describe "when nif is not present" do
    before { @student.nif = " " }
    it { should_not be_valid }
  end

  it { should respond_to(:marks) }
  it { should respond_to (:subjects)}
  it { should respond_to (:user)}

end

