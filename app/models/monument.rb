class Monument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  # validates :photo, presence: true
  has_many_attached :photos
  # has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_title_and_address,
    against: [:title, :address],
    using: {
      tsearch: { prefix: true }
    }
end
