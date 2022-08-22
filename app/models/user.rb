class User < ApplicationRecord
  has_many :reservations
  has_many :amines, foreign_key: :owner_id
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, :first_name, presence: true, length: { minimum: 2 }
end
