# Створення класу для власного виключення (наслідуємо Exception)
class CustomException < Exception
  def initialize(msg = "This is special message from custom Exception\nIt worked cause you entered 32 as first argument")
    super(msg)
  end
end

# Метод для демонстрації обробки виключень
def my_division(value1, value2)
  res = nil
  puts "Starting division..."
  begin
    # за допомогою raise генеруємо власне виключення
    raise CustomException if value1 == 32
    res = value1/value2
  rescue CustomException => e # Перехоплюємо виключення
    puts "Error: #{e.message}"
  # Використовуємо декілька блоків rescue
  rescue ZeroDivisionError # Перехоплюємо виключення при діленні на нуль
    puts "Sorry, there is division by zero"
  rescue => e # Перехоплюємо всі можливі інші виключення
    puts "Error: #{e.message}"
    print e.backtrace.join("\n")
  ensure # насутпний код виконується в будь-якому випадку
    puts "End of division"
    res
  end
end

puts "result1:#{my_division(32, 2)}"
puts "result2:#{my_division(30, 0)}"
puts "result3:#{my_division("one", "two")}"
puts "result4:#{my_division(30, 2)}"

