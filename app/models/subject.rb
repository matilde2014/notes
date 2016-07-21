class Subject < ActiveRecord::Base
  validates :name, presence: true
  validates :hours, presence: true
  #validates :user_id, presence: true

  has_many :marks
  has_and_belongs_to_many :students
  #belongs_to :user
end
