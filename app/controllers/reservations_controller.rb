class ReservationsController < ApplicationController
  before_action :set_amine, only: :create
  before_action :set_reservation, only: %i[decline accept]

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.amine = @amine
    @reservation.save!

    redirect_to account_reservations_path
  end

  def decline
    @reservation.decline!
    redirect_to test_path
  end

  def accept
    @reservation.update!(status: "accepted")
    redirect_to test_path
  end

  def user_index
    @reservations = Reservation.where("reservations.user_id = ?", current_user)
    @reservations = Reservation.where("status = ?", params[:sort])
  end

  private

  def set_amine
    @amine = Amine.find(params[:amine_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:date, :message)
  end
end
