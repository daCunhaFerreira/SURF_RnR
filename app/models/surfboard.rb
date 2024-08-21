class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :picture

  validates :name, presence: true
  validates :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
