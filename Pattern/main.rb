require_relative './Products'
require_relative './Factories'

puts "Hello Abstract Factory pattern."

def working_factory
  if rand(2) == 0
    CivilianFactory.new
  else
    MilitaryFactory.new
  end
end

def production(days)
  days = 1 if days < 1
  puts "Starting production for #{days} days."
  days.times do |i|
    puts "Working day #{i+1} started"
    factory = working_factory
    car = factory.produce_car
    plane = factory.produce_airplane
    ship = factory.produce_ship
    puts "Produced series of vehicles:"
    puts "car which has: #{car.wheels_count} wheels with max speed #{car.max_speed} km/h and #{car.have_radio? ? '' : 'no '}radio."
    puts "plane which has: #{plane.passengers} passengers with max cargo #{plane.cargo} kilogram."
    puts "ship which has: #{ship.fuel_capacity} gallons of fuel with #{ship.staff_count} staff members."
    puts "." * 30
  end
end

production(5)

