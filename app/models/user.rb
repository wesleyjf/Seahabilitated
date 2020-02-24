class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :surfboards, dependent: :destroy
  has_many :surfboards, through: :bookings

  validates :username, presence: true, length: { minimum: 4 }
end