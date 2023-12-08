# Ієрархія класів для створення зброї
class Weapon
  attr_accessor :name, :damage

  def initialize(name, dmg)
    @name = name
    @damage = dmg
  end
end

class BattleBow < Weapon
  # Зброя також може мати особливу "навичку", тому підключаємо необхідний модуль
  include(SpecialAbility)

  attr_accessor :type

  def initialize(name, dmg, type, ability)
    super(name, dmg)
    @type = type
    @ability = ability
  end
end