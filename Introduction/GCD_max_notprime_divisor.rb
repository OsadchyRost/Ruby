# Метод 3 Найти НОД максимального нечетного непростого делителя числа и произведения цифр данного числа.

def nod(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

def summ(a)
  res = 1
  while a > 0 do
    res *= a % 10
    a /= 10
  end
  return res
end

def is_prime(n)
  return false if n <= 1

	(2..n/2).each do |i|
		return false if n % i == 0
	end

	return true
end

def maxi_found(n)
  max_res = -1
  (3..n).step(2).each do |i|  
    if n % i == 0
      if !is_prime(i)
        max_res = [max_res, i].max
      end
    end
  end
  max_res
end

print "Введите число: "
number = gets.chomp.to_i
result = maxi_found(number)
sum=summ(number)

puts "Произвдеение цифр числа: #{sum}"
if result == -1
  puts "Нет нечетных непростых делителей"
else
  puts "Ответ: #{result}"
end

answer = nod(sum, result)
puts "НОД: #{answer}"


