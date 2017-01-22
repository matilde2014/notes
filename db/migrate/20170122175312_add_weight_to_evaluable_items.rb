class AddWeightToEvaluableItems < ActiveRecord::Migration
  def change
    add_column :evaluable_items, :weight, :float, default: 0.0
  end
end