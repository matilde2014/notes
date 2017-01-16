class EvaluableItem < ActiveRecord::Base
  belongs_to :subject
  validates_uniqueness_of :name, scope: :subject_id
  validates_presence_of :name
end