class AddRemarksToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :remarks, :text
  end
end