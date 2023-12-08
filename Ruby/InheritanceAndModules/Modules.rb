# Модулі
module Mood
  def mood_is(mood)
    puts "My mood is #{mood}"
  end
end

module SomeModule
  def some_method
    puts "I am some method from SomeModule module"
  end
end

# Два не пов'язаних між собою класи
class Pet
  attr_accessor :nickname
  include(Mood) # включення методів з модуля до методів інстенсів (instance methods)
  extend(SomeModule) # включення методів з модуля до методів класу (class methods)

  def initialize(name)
    @nickname = name
  end

  def walking
    puts "#{nickname} is walking."
  end
end

class Human
  attr_accessor :name
  # Можемо включати декілька модулів (багаторазове спадкування через mixins)
  include(Mood)
  include(SomeModule)

  def initialize(name)
    @name = name
  end

  def working
    puts "#{name} is working."
  end
end

pet = Pet.new("Poppy")
human = Human.new("Alexandra")
# Виконання методів об'єктів різних класів
pet.walking
human.working
# Виконання одного і того ж методу об'єктів різних класів (через включення модуля)
pet.mood_is("fine")
human.mood_is("terrible")
# Виконання методу класу включеного за допомогою модуля
Pet.some_method
# Виконання методів з різних, підключених, модулів
human.mood_is("calm")
human.some_method
