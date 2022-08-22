class Amine < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :mood
end
