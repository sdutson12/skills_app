class Booking < ApplicationRecord
  HOURS = [1, 1.5, 2, 2.5, 3]

  belongs_to :user
  belongs_to :skill
  has_many :reviews, dependent: :destroy

  validates :date, presence: true
  validates :num_of_hours, presence: true, numericality: true, inclusion: { in: HOURS }
  validates :status, presence: true
end
