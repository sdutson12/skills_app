class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: true
  validates :content, uniqueness: true
  validates :stars, presence: true
  validates :stars, numericality: { only_integer: true }
  validates :stars, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :title, presence: true
  validates :title, uniqueness: true
end
