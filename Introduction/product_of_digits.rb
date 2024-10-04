# Метод 2. Найти произведение цифр числа, не делящихся на 5.

def found(a)
  res = 1
  while a > 0 do
    if a % 10 % 5 != 0 
      res *= a % 10
    end
    a /= 10
  end
  
  if res == 1
    return 0
  else
    return res
  end
end

print "Введите число: "
number = gets.chomp.to_i
result = found(number)
if result == 0
  puts "Таких цифр нет"
else
  puts "Произведение цифр числа, не делящихся на 5: #{result}"
end
