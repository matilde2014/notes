class Subject < ActiveRecord::Base
  validates :name, presence: true
  validates :hours, presence: true
  has_many :marks
  has_and_belongs_to_many :students
end
