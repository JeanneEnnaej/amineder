class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.message = "dsfghjkjhgfdsfghjkhgfdsfghjkhgfdgh"
    @reservation.date = "2022/09/30"
    @reservation.save!

    redirect_to account_reservations_path
  end

  def decline
    @reservation.update(status: "decline")
  end

  def accept
    @reservation.update(status: "accept")
  end

  def user_index
    @reservations = Reservation.where("reservations.user_id = ?", current_user)
  end

  private

  def reservation_params
    params.permit(:date, :amine_id)
  end
end
