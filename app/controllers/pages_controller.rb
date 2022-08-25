class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: :home

  def home
    tous_amines = Amine.all.shuffle
    @amines = []
    3.times do
      @amines << tous_amines.pop
    end
    @amine = Amine.where("")
  end

  def test
    @reservations = Reservation.all
  end
end
