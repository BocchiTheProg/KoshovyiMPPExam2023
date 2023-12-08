require_relative './CountingSort'

puts "Hello Counting Sort."
# Метод для фіксування часу виконання блоку коду
def cul_time
  t_start = Time.now
  yield if block_given?
  t_end = Time.now
  puts "Taken time #{t_end - t_start}"
end

# Код для демонстрації
size = 30
range = 500
input_arr = Array.new(size) # вхідний масив
input_arr.map! { |_| rand(range)}
puts "Input Arr:"
print input_arr.join(", ") + "\n\n"
res = nil
# Звичайне сортування підрахунком
cul_time do
  res = CountSort.classic(input_arr)
end
print "Result:\n" + res.join(", ") + "\n\n"
# Сортування підрахунком без кумулятивних сум
cul_time do
  res = CountSort.advanced(input_arr)
end
print "Result (without cumulative sum):\n" + res.join(", ") + "\n\n"
# Сортування підрахунком з негативними числами
input_arr.map! { |_| rand(range)-(range/2)}
puts "Input Arr (with negative):"
print input_arr.join(", ") + "\n"
print "Result:\n" + CountSort.sort_with_negative(input_arr).join(", ") + "\n"