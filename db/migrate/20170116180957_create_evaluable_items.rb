class CreateEvaluableItems < ActiveRecord::Migration
  def change
    create_table :evaluable_items do |t|
      t.string :name
      t.text :remarks
      t.integer :subject_id

      t.timestamps
    end
  end
end
