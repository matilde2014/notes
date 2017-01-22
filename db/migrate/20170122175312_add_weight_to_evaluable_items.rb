class AddWeightToEvaluableItems < ActiveRecord::Migration
  def change
    add_column :evaluable_items, :weight, :float
  end
end
