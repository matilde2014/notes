class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :birthday, presence: true
  validates :nif, presence: true
end
