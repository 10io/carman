module CarsHelper
  def traction_options(car)
    return Car.tractions.keys if car.offroad?
    Car.tractions.keys.first(1)
  end

  def head_lamps_options(car)
    return Car.head_lamps.keys if car.luxury?
    Car.head_lamps.keys.first(1)
  end

  def engine_options(car)
    return Car.engines.keys if car.luxury?
    Car.engines.keys.first(1)
  end
end
