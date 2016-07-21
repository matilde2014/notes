class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :birthday, presence: true
  validates :nif, presence: true
  validates :user_id, presence: true


  has_many :marks
  has_and_belongs_to_many :subjects
  belongs_to :user
end
