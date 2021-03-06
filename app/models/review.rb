class Review < ApplicationRecord
  STARS = [0, 1, 2, 3, 4, 5]
  belongs_to :booking

  validates :content, presence: true
  validates :content, uniqueness: true
  validates :stars, presence: true
  validates :stars, numericality: { only_integer: true }
  validates :stars, inclusion: { in: STARS }
  validates :title, presence: true
  validates :title, uniqueness: true
end
