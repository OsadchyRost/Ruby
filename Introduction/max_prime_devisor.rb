#Вариант №3
#Метод 1 Найти максимальный простой делитель числа.

#Функция для определения простоты числа
def is_prime(n)
  return false if n <= 1

	(2..n/2).each do |i|
		return false if n % i == 0
	end

	return true
end

def max_prime_divisor(n)
	return nil if n <= 1

	result = nil

	(2..n).each do |i|
		if n % i == 0 && is_prime(i)
			result = i
		end
	end

	return result
end

print "Введите число: "
number = $stdin.gets.chomp.to_i
puts "Максимальный простой делитель числа: #{max_prime_divisor(number)}"


