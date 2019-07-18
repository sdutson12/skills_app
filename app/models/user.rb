class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :taught_skills, foreign_key: "user_id", class_name: "Skill", dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :learned_skills, through: :bookings, source: :skill, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :information, presence: true

  def instructor?
    !taught_skills.empty?
  end

  def player?
    taught_skills.empty?
  end
end
