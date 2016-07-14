class Mark < ActiveRecord::Base
  validates :value, presence: true
  validates :description, presence: true
  validates :mdate, presence: true
end
