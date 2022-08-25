class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :amine

  validates :date, presence: true, uniqueness: { scope: :amine, conditions: -> { where.not(status: 'decline') } }
  validates :message, presence: true
  validate :reservation_date_cannot_be_in_the_past

  def reservation_date_cannot_be_in_the_past
    if date < Date.today
      errors.add(:date, "Vous ne pouvez reserver d'Amine pour une date passée")
    end
  end

  def decline!
    @reservation.update!(status: "decline")
  end

  def accept!
    @reservation.update!(status: "accept")
  end
end
