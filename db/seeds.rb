# sedan cars
Car.create!(
  :brand => "Honda",
  :model => "Accord",
  :year => 2012,
  :horsepower => 185,
  :mpg => 34
)

Car.create!(
  :brand => "Mazda",
  :model => "6",
  :year => 2009,
  :horsepower => 160,
  :mpg => 29
)

Car.create!(
  :brand => "Ford",
  :model => "Explorer Sport",
  :year => 2014,
  :horsepower => 290,
  :mpg => 24,
  :suv => true
)

# luxury cars
Car.create!(
  :type => :luxury,
  :brand => "Bentley",
  :model => "Continental GT",
  :year => 2015,
  :horsepower => 521,
  :mpg => 24,
  :head_lamp => :led,
  :blind_spot_detection => true
)

Car.create!(
  :type => :luxury,
  :brand => "Porsche",
  :model => "911 S",
  :year => 2005,
  :horsepower => 325,
  :mpg => 24,
  :head_lamp => :xenon,
  :blind_spot_detection => false
)

Car.create!(
  :type => :luxury,
  :engine => :electric,
  :brand => "Tesla",
  :model => "Model S",
  :year => 2015,
  :head_lamp => :laser,
  :blind_spot_detection => true,
  :range => 270
)

# offroad cars
Car.create!(
  :type => :offroad,
  :brand => "Jeep",
  :model => "Wrangler",
  :year => 2003,
  :horsepower => 147,
  :mpg => 18,
  :traction => "4WD"
)

Car.create!(
  :type => :offroad,
  :brand => "Toyota",
  :model => "4Runner",
  :year => 2010,
  :horsepower => 157,
  :mpg => 23,
  :traction => "2WD"
)
