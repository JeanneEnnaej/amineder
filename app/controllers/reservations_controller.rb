class ReservationsController < ApplicationController
  before_action :set_amine, only: :create
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.amine = @amine
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

  def set_amine
    @amine = Amine.find(params[:amine_id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :message)
  end
end
