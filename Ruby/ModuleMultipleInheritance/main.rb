require_relative './Modules'
require_relative './Characters'
require_relative './Weapons'

# Код для демонстрації
main_hero = Hero.new("Billy", 100, 1, "Invisibility", 200)
some_bow = BattleBow.new("Marksman", 5, "Long Bow", "Infinite arrows")

puts "Hero characteristics"
puts "Name: #{main_hero.name}, Health point: #{main_hero.health_points}\nLevel: #{main_hero.level}\nAbility: #{main_hero.ability}, Budget: #{main_hero.current_budget}"
puts "-" * 35
puts "Weapon characteristics"
puts "Name: #{some_bow.name}, Damage: #{some_bow.damage}\nType: #{some_bow.type}\nAbility: #{some_bow.ability}"
# Дякий персонаж та деяка зброя відносяться до різних ієрархій
# але обидва, за допомогою модуля, мають таку характеристику як "навичка"