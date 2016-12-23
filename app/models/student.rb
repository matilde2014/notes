require 'carrierwave/orm/activerecord'

class Student < ActiveRecord::Base
  validates :user_id, presence:true
  validates :name, presence: true

  validates_uniqueness_of :nif, :scope => :user_id
  validates_presence_of :nif

  ACCESS_MODES = ["ESO","BACHILLERATO", "CICLO_MEDIO","CICLO_SUPERIOR","ESTUDIOS_UNIVERSITARIOS"]
  validates_inclusion_of :access_mode, :in => ACCESS_MODES, :allow_nil => true


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates_format_of :email, :with => VALID_EMAIL_REGEX, :allow_blank => true
  validates_format_of :guardian_email, :with => VALID_EMAIL_REGEX, :allow_blank => true

  mount_uploader :image, AvatarUploader

  attr_accessor :image_cache

  has_many :marks

  has_and_belongs_to_many :subjects
  belongs_to :user

  def enroll?(subject)
    subjects.where(id: subject.id).first
  end

end
