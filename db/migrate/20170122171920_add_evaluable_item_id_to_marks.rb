class AddEvaluableItemIdToMarks < ActiveRecord::Migration
  def change
    add_column :marks, :evaluable_item_id, :integer
  end
end
