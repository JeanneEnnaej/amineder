class Mood < ApplicationRecord
  has_many :amines
  has_many :mood_categories
  has_many :categories, through: :mood_categories
end
