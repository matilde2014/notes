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

  #describe 'access to students' do

  #  let(:nosy) { FactoryGirl.create(:user, email: 'nosy@example.com') }
  #  let(:teacher) { FactoryGirl.create(:user, email: 'teacher@example.com') }
  #  let!(:student) { FactoryGirl.create(:student, user: teacher) }

  #  subject { page }

  #  describe "with authorizarion" do
  #    before do
  #      login_as teacher
  #      visit students_path
  #    end

  #    it 'shows student data' do
  #      should have_content(student.name)
  #    end
  #  end

   # describe "with non authorizarion" do
   #   before do
   #     login_as nosy
   #   end

   #   it 'does not show student data' do
   #     visit students_path
   #     should_not have_content(student.name)
   #   end

   #   it 'does not show student data' do
   #     visit student_path(student)
   #     should_not have_content(student.name)
   #   end

   #   it 'redirects to root url' do
   #     visit student_path(student)
   #     expect(current_url).to eql(root_url)
   #   end
   # end

  #end
end
