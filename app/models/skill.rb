class Skill < ApplicationRecord
  SPORTS = %w[soccer basketball lacrosse hockey gymnastics rock\ climbing swimming golf yoga tennis cycling surfing jiu-jitsu]
  mount_uploader :photo, PhotoUploader

  belongs_to :user, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :sport, presence: true
  validates :sport, inclusion: { in: SPORTS }
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }

  def average_stars
    if self.reviews.size > 0
      self.reviews.average(:stars).to_i
    else
      0
    end
  end
end
