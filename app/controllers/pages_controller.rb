class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: :home

  def home
    @amines = Amine.order('RANDOM()').limit(3)
    @amine = Amine.where("")
  end
end
