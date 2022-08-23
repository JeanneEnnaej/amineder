class AminesController < ApplicationController
  skip_before_action :authenticate_user!, only: :search


  def search
    params[:query] ? query = "%" + params[:query] + "%" : query = ""

    @amines = Amine.joins(mood: :categories).where("amines.name LIKE ? or moods.name LIKE ? or categories.name LIKE ?", query, query, query).distinct
  end

  def new
    @amine = Amine.new
  end

  def create
    @amine = Amine.new(amine_params)
    @amine.owner = current_user
    @amine.save

    redirect_to account_amines_path
  end

  def user_index
    @amines = Amine.where("amines.owner_id = ?", current_user)
  end

  def destroy
    @amine = Amine.find(params[:id])
    @amine.destroy

    redirect_to account_amines_path, status: :see_other
  end

  private

  def amine_params
    params.require(:amine).permit(:name, :price, :description, :mood_id, photos: [])
  end
end
