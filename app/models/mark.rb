class Mark < ActiveRecord::Base
  validates :value, presence: true
  validates :description, presence: true
  validates :mdate, presence: true
  belongs_to :student
  belongs_to :subject
end
