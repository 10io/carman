class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path, :notice => "Save successful"
    else
      render :new, :change => [:new_car, :flash_alert]
    end
  end

  def new
    @car = Car.new
  end

  def update_form
    @car = Car.new(car_params)

    render :new, :change => [:new_car]
  end

  private

  def car_params
    params.require(:car).permit(
      :type,
      :brand,
      :model,
      :year,
      :engine,
      :horsepower,
      :mpg,
      :range,
      :traction,
      :suv,
      :head_lamp,
      :blind_spot_detection
    )
  end
end
