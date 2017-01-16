  class AddCourseToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :course, :string
  end
end
