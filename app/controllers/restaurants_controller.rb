class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(restaurant)
  end

  def edit
    @restaurant = Restaurant.find_by(params[:id])
    @restaurant.update()

  end

  def delete
    @restaurant = Restaurant.find_by(params[:id])
    @restaurant.destroy

  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)

  end




end
