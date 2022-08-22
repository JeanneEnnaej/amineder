class MoodCategory < ApplicationRecord
  belongs_to :category
  belongs_to :mood
end
