class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :birthday, presence: true
end
