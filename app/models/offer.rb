class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 5, maximum: 1000 }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :date, presence: true
  validates :localisation, presence: true
  validates :profession, presence: true
  validates :experience, presence: true
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
