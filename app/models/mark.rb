class Mark < ActiveRecord::Base
  validates :value, presence: true
  belongs_to :student
  belongs_to :evaluable_item
  validates_uniqueness_of :evaluable_item, scope: :student
  validates_presence_of :student_id
  validates_presence_of :evaluable_item_id
end