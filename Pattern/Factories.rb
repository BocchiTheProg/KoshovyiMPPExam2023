# Абстрактний клас фабрики.
# Можна обійтись і без нього, головне щоб конкретні фабрики могли "створювати" всю "серію" (автомобіль, літак, корабель) транспорту.
# Наступний клас наведено для наглядності
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

# Конкретні фабрики
class CivilianFactory < VehicleFactory # Дана фабрика виробляє лише серію трансопрту цивільного "типу"
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

class MilitaryFactory < VehicleFactory # Дана фабрика виробляє лише серію трансопрту військового "типу"
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

# Можна створити інші фабрики, які, наприклад, будуть виготовляти серію трансопрту різного "типу" (щось цивільного, а щось військового)