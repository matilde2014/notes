class AddNewFieldsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :address, :string
    add_column :students, :phone, :string
    add_column :students, :email, :string
    add_column :students, :guardian_name, :string
    add_column :students, :guardian_phone, :string
    add_column :students, :guardian_email, :string
    add_column :students, :former_studies, :string
    add_column :students, :access_mode, :string
    add_column :students, :remarks, :text
  end
end
