require 'spec_helper'

describe User do
  before do
    @user = User.new(email: "juan.ruiz@example.com", password: "password", password_confirmation: "password")
  end

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:reset_password_token) }
  it { should respond_to(:reset_password_sent_at) }
  it { should respond_to(:remember_created_at) }
  it { should respond_to(:sign_in_count) }
  it { should respond_to(:current_sign_in_at) }
  it { should respond_to(:current_sign_in_ip) }
  it { should respond_to(:last_sign_in_at) }
  it { should respond_to(:last_sign_in_ip) }
  it { should respond_to(:subjects) }
  it { should respond_to(:students) }

  it { should be_valid }

  describe "when the email is invalid" do
    before { @user.email = "invalid" }
    it { should_not be_valid }
  end

  describe "when the email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when the password is not present" do
    before { @user.password = " " }
    it { should_not be_valid }
  end

  describe "when the password_confirmation is not present" do
    before { @user.password_confirmation = " " }
    it { should_not be_valid }
  end

  describe "when the password and password confirmation are not equal" do
    before { @user.password_confirmation = "anoter_value" }
    it { should_not be_valid }
  end

  describe "when the email has been taken" do
    before do
      @another_user = User.create(email: "juan.ruiz@example.com", password: "password", password_confirmation: "password")
    end
    it { should_not be_valid }
  end


end