class Category < ApplicationRecord
  has_many :mood_categories
  has_many :moods, through: :mood_categories
  has_many :amines, through: :moods

end
