class Monument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  # validates :photo, presence: true
  has_many_attached :photos
  has_one_attached :photo
end
