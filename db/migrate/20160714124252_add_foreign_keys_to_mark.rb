class AddForeignKeysToMark < ActiveRecord::Migration
  def change
    add_column :marks, :student_id, :integer
    add_column :marks, :subject_id, :integer
  end
end
