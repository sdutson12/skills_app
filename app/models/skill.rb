class Skill < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :sport, presence: true
  validates :price, presence: true
  validates :name, presence: true
end
