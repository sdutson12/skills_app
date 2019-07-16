class Skill < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :sport, presence: true
  validates :sport, inclusion: { in: %w[soccer basketball lacrosse hockey gymnastics climbing swimming golf yoga] }
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
end
