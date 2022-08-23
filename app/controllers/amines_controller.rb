class AminesController < ApplicationController

  def search
    @amines = Amine.where("name LIKE ? or mood LIKE ? or category LIKE ?", "%"+ params[:query] +"%")
  end

  def new
    @amine = Amine.new
  end

  def create
    @amine = Amine.new(amine_params)
    @amine.owner = current_user
    if @amine.save
      redirect_to amines_path
    else
      render "home", status: :unprocessable_entity
    end
  end

  def user_index
    @amines = Amine.where(user: current_user)
  end

  def destroy
    @amine = Amine.find(params[:id])
    @amine.destroy
  end

  private

  def amine_params
    params.require(:amine).permit(:name, :price, :description, :mood_id)
  end
end
