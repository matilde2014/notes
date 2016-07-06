class AddNifToStudents < ActiveRecord::Migration
  def change
    add_column :students, :nif, :string
  end
end
