# Абстрактні класи транспортних засобів.
# Взагалі ці класи необов'язково створювати, достатньо лише створити конкретні класи що представляють тарнсопртні засоби певного "типу".
# Головне щоб у всіх конкретних класів був "однаковий інтерфейс" (інакше буде порушено принцип відкритості/закритості).
# Тому наступні три класи наведені для наглядності.
class Car
  def max_speed
    raise "No implementation of method"
  end

  def wheels_count
    raise "No implementation of method"
  end

  def have_radio?
    raise "No implementation of method"
  end
end

class Airplane
  def passengers
    raise "No implementation of method"
  end

  def cargo
    raise "No implementation of method"
  end
end

class Ship
  def fuel_capacity
    raise "No implementation of method"
  end

  def staff_count
    raise "No implementation of method"
  end
end

# Класи конкретних транспортних засобів (є два "типи": цивільні та військові)
class CivilCar < Car
  attr_reader :max_speed, :wheels_count

  def initialize
    @max_speed = 180
    @wheels_count = 4
    @have_radio = true
  end

  def have_radio?
    @have_radio
  end
end

class MilitaryCar < Car
  attr_reader :max_speed, :wheels_count

  def initialize
    @max_speed = 100
    @wheels_count = 6
    @have_radio = false
  end

  def have_radio?
    @have_radio
  end
end

class CivilPlane < Airplane
  attr_reader :passengers, :cargo

  def initialize
    @passengers = 100
    @cargo = 500
  end
end

class MilitaryPlane < Airplane
  attr_reader :passengers, :cargo

  def initialize
    @passengers = 20
    @cargo = 2000
  end
end

class CivilShip < Ship
  attr_reader :fuel_capacity, :staff_count

  def initialize
    @fuel_capacity = 1200
    @staff_count = 20
  end
end

class MilitaryShip < Ship
  attr_reader :fuel_capacity, :staff_count

  def initialize
    @fuel_capacity = 4200
    @staff_count = 60
  end
end

# Можна створити і інші види транспорту або їх "типи"