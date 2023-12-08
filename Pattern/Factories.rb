class VehicleFactory
  def produce_car
    raise('not implemented method')
  end

  def produce_airplane
    raise('not implemented method')
  end

  def produce_ship
    raise('not implemented method')
  end
end

class CivilianFactory < VehicleFactory
  def produce_car
    CivilCar.new
  end

  def produce_airplane
    CivilPlane.new
  end

  def produce_ship
    CivilShip.new
  end
end

class MilitaryFactory < VehicleFactory
  def produce_car
    MilitaryCar.new
  end

  def produce_airplane
    MilitaryPlane.new
  end

  def produce_ship
    MilitaryShip.new
  end
end