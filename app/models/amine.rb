class Amine < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :mood

  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true, length: { minimum: 4 }
  validates :price, numericality: { only_integer: true }
  validates :description, length: { minimum: 15 }
end
