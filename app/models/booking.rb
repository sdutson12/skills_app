class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, default: "pending"
end
