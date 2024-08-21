class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :picture

  validates :name, presence: true
  validates :price, presence: true
end
