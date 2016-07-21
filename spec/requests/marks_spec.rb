require 'spec_helper'

describe "Marks", :type => :feature  do

  let(:user) { FactoryGirl.create(:user) }

  before do
    login_as user
  end
  subject { page }
  before { visit new_mark_path }

  describe "with invalid information" do
    it "should not create a mark" do
      expect { click_button "Create Mark" }.not_to change(Mark, :count)
    end

    it "should not create a mark" do
      click_button "Create Mark"
      should have_content("Value can't be blank")
      should have_content("Description can't be blank")
    end
  end

  describe "with valid information" do
    before do
      fill_in 'Value', with: 5
      fill_in 'Description', with: "Des"
    end

    it "should create a mark" do
      expect { click_button "Create Mark" }.to change(Mark, :count).by(1)
    end

    it "should show valid information" do
      click_button "Create Mark"
      should have_content("Des")
      should have_content("5.0")
      #should have_content("Mark was successfully created")
    end
  end

end


