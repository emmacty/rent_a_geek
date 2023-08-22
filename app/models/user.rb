class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :offers
  has_many :bookings, dependent: :destroy
  has_many :missions, through: :offers, class_name: "Booking", source: :bookings
  has_one_attached :photo
  validates :photo, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
end
