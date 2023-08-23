class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :date, presence: true
  validates :localisation, presence: true
  validates :profession, presence: true
  validates :experience, presence: true
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
