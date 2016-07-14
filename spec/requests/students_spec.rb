require 'spec_helper'

describe "Students pages", :type => :feature  do

  describe "student creation" do
    before do
      visit new_user_registration_path
      fill_in "Email", with: "juan.ruiz@example.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_button "Sign up"
    end

    subject { page }

    before { visit new_student_path }


    describe "with invalid information" do

      it "should not create a student" do
        expect { click_button "Create Student" }.not_to change(Student, :count)
      end

      it "should not create a student" do
        click_button "Create Student"
        should have_content("Name can't be blank")
        should have_content("Nif can't be blank")
      end
    end

    describe "with valid information" do

      before do
        fill_in 'Name', with: "Juan Ruiz"
        #fill_in 'Birthday', with: "01/01/1970"
        fill_in 'Nif', with: "12345678A"
      end

      it "should create a student" do
        expect { click_button "Create Student" }.to change(Student, :count).by(1)
      end

      it "should show valid information" do
        click_button "Create Student"
        should have_content("Juan Ruiz")
        should have_content("12345678A")
        should have_content("Student was successfully created")
      end
    end

  end
end
