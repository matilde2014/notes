class AddUserIdToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :user_id, :integer
    change_column :students, :user_id, :integer, :null => false
  end

  def self.down
    remove_column :students, :user_id
  end
end
