# Метод 3 Найти НОД максимального нечетного непростого делителя числа и произведения цифр данного числа.

def gcd(num)

  def is_prime(n)
    return false if n <= 1
  
    (2..n/2).each do |i|
      return false if n % i == 0
    end
  
    return true
  end

  def maxi_div(n)
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

  def product(a)
    res = 1
    while a > 0 do
      res *= a % 10
      a /= 10
    end
    return res
  end
  
  a = maxi_div(num)
  b = product(num)
  while b != 0
    a, b = b, a % b
  end
  a
end


print "Введите число: "
number = gets.chomp.to_i
answer = gcd(number)
puts "НОД: #{answer}"