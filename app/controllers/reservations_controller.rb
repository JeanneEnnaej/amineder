class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.save
  end

  def decline
    @reservation.update(status: "decline")
  end

  def accept
    @reservation.update(status: "accept")
  end

  def user_index
    @reservations = Reservation.where(user: current_user)
  end

  private

  def reservation_params
    params.require(reservation).permit(:date, :amine_id)
  end
end
