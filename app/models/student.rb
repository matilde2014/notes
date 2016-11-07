class Student < ActiveRecord::Base
  validates :user_id, presence:true
  validates :name, presence: true
  validates :user_id, presence: true


  has_many :marks

  has_and_belongs_to_many :subjects
  belongs_to :user


  def enroll?(subject)
    subjects.where(id: subject.id).first
  end

end
