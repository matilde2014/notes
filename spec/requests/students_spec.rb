require 'spec_helper'

describe "Students pages", :type => :feature  do
  subject { page }

  describe "student creation" do
    before { visit new_student_path }

    describe "with invalid information" do

      it "should not create a student" do
        expect { click_button "Create Student" }.not_to change(Student, :count)
      end

      it "should not create a student" do
        click_button "Create Student"
        should have_content("Name can't be blank")
      end

    end
  end
end
