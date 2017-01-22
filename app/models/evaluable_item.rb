class EvaluableItem < ActiveRecord::Base
  belongs_to :subject
  validates_uniqueness_of :name, scope: :subject_id
  validates_presence_of :name
  validates_presence_of :weight
  has_many :marks
end