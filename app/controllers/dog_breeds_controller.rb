class DogBreedsController < ApplicationController
  def index
    if params[:search].present?
      @breeds = DogBreed.where("name LIKE ?", "%#{params[:search]}%")
    else
      @breeds = DogBreed.all
    end
  end

  def show
    @breed = DogBreed.find(params[:id])
  end
end
