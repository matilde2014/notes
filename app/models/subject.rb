class Subject < ActiveRecord::Base
  validates :name, presence: true
  validates :hours, presence: true
  validates :user_id, presence: true

  validates_uniqueness_of :name, :scope => :user_id

  has_many :evaluable_items
  has_and_belongs_to_many :students
  belongs_to :user
end