class Subject < ActiveRecord::Base
  validates :name, presence: true
  validates :hours, presence: true
end
