class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.float :value
      t.string :description
      t.date :mdate

      t.timestamps
    end
  end
end
