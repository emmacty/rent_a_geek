class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :price_per_day, presence: true
  validates :brand, presence: true
  validates :user_id, presence: true
  validates :date, presence: true
  validates :localisation, presence: true
  validates :profession, presence: true
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  include PgSearch::Model
  multisearchable against: [:title, :description, :localisation, :profession]

  pg_search_scope :global_search,
  against: [ :title, :description, :localisation, :profession ],
  associated_against: {
    user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
