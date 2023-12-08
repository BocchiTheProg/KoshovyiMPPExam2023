# Алгоритм реалізовано в модулі
module CountSort
  def CountSort.classic(arr)
    max = arr.max # максимальне значення
    count = Array.new(max + 1, 0) # допоміжний масив "підрахунку"
    arr.each { |num| count[num] += 1 } # підраховуємо кількість повторів елементів
    # Підраховуємо кумулятивні суми
    (1..max).each do |i|
      count[i] += count[i-1]
    end
    sorted_arr = [] # Результуючий масив
    # Заносимо елементи з вхідного у вихідний у відсортованому порядку
    # за допомогою допоміжного масиву
    (0..arr.size-1).reverse_each do |i|
      count[arr[i]]-=1
      sorted_arr[count[arr[i]]] = arr[i]
    end
    sorted_arr
  end

  def CountSort.advanced(arr)
    max = arr.max
    count = Array.new(max + 1, 0)
    arr.each { |num| count[num] += 1 }
    # в даній реалізації пропускаємо підрахунок кумулятивних сум
    # через це, дана реалізація не стабільна (може змінитись порядок однакових елементів)
    sorted_arr = []
    count.each_with_index { |value, num| value.times { sorted_arr << num } }
    sorted_arr
  end

  # реалізація що працює і з від'єменими числами
  def CountSort.sort_with_negative(arr)
    max = arr.max
    min = arr.min # окрім максимального значення необхідно знайти і мінімальне
    # за допомогою мінімального значення виділяємо необхідну кількість елементів у допоміжному масиві.
    # За рахунок цього, при відсутності від'ємних значень пам'ять буде виділено ефективніше.
    count = Array.new(max-min+1, 0)
    arr.each { |n| count[n-min] += 1 }
    sorted_arr = []
    count.each_with_index { |value, num| value.times { sorted_arr << num + min } }
    sorted_arr
  end
end