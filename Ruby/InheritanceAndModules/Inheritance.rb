# Супер клас
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def walking
    puts "#{name} walking."
  end
end

# Дочірні класи
class Dog < Animal
  # додаткові атрибути
  attr_accessor :type

  def initialize(name, type)
    super(name) # використання конструктора з супер класу
    @type = type
  end

  # Додатковий метод
  def voice
    puts "#{name}, the #{type}, is barking."
  end
end

class Cat < Animal
  # розширення (модифікація) методу з супер класу
  def walking
    super
    puts "#{name} started bathing."
  end
end

# Об'єкт супер класу
pet1 = Animal.new("John")
# Об'єкти дочірніх класів
pet2 = Dog.new("Petty", "Shepard")
pet3 = Cat.new("Vanessa")
# Виконання методів
pet1.walking
pet2.walking
pet3.walking

pet2.voice
