class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params [:id])
  end

  def new

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  def edit
    @restaurant = Restaurant.find_by(params[:id])

  end

  def delete


  end

  def restaurant_params
    params
      .require(:restaurants)
      .permit(:name, :address, :phone_number, :category)
  end




end
