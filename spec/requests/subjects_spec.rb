require 'spec_helper'

describe "Subjects", :type => :feature  do
  describe "GET /subjects" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get subjects_path
      response.status.should be(200)
    end
  end

  subject { page }

  describe "subject creation" do
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
