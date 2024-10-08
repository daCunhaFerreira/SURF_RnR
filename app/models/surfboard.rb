class Surfboard < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :pictures

  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :super_search,
  against: [ :address ],
  using: {
    tsearch: { prefix: true }
  }

end
