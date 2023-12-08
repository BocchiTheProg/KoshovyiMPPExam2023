# Ієрархія класів для створення персонажів
class Character
  attr_accessor :name, :health_points

  def initialize(name, hp)
    @name = name
    @health_points = hp
  end
end

class Hero < Character
  # Даний клас вже має супер клас,
  # тому, щоб даний клас мав додаткові характеристики (такі як навичка і бюджет)
  # включаємо модулі
  include(Budget)
  # Ми могли б зробити так, що харатеристика "навичка"(@ability) була оголошена в супер класі,
  # але тоді було б не зрозуміло що робити з іншими класами, які не входять до даної ієрархії, як наприклад Зброя(Weapon),
  # і також можуть мати таку характеристику
  include(SpecialAbility)

  attr_reader :level

  def initialize(name, hp, lvl, ability, budget)
    super(name, hp)
    @level = lvl
    @ability = ability
    @budget = budget
  end

  def lvl_up
    @lvl+=1
  end
end