require 'spec_helper'

describe "Subjects", :type => :feature  do

  describe "subject creation" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      login_as user
    end


    subject { page }

    before { visit new_subject_path }

    describe "with invalid information" do

      it "should not create a subject" do
        expect { click_button "Create Subject" }.not_to change(Subject, :count)
      end

      it "should not create a subject" do
        click_button "Create Subject"
        should have_content("Name can't be blank")
        should have_content("Hours can't be blank")
      end
    end

    describe "with valid information" do

      before do
        fill_in 'Name', with: "Programación"
        #fill_in 'Birthday', with: "01/01/1970"
        fill_in 'Hours', with: 200
      end

      it "should create a subject" do
        expect { click_button "Create Subject" }.to change(Subject, :count).by(1)
      end

      it "should show valid information" do
        click_button "Create Subject"
        should have_content("Programación")
        should have_content("200")
        should have_content("Subject was successfully created")
      end

    end

  end

end
