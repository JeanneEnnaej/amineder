class Mood < ApplicationRecord
  has_many :amines
  has_many :mood_categories
end
