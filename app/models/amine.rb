class Amine < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :mood
  has_many :mood_categories, through: :mood
  has_many :categories, through: :mood_categories
  has_many_attached :photos
  has_many :reservations

  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true, length: { minimum: 4 }
  validates :price, numericality: { only_integer: true }
  validates :description, length: { minimum: 15 }
  validates :photos, presence: true
end
