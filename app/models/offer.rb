class Offer < ApplicationRecord
  belongs_to :user

  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
  validates :status, presence: true
  validates :user_id, presence: true
  validates :title, presence: true
  validates :localisation, presence: true
  validates :profession, presence: true
  validates :experience, presence: true
end
