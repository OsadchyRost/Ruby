puts "Здравствуй, #{ARGV[0]}!"
puts 'Какой язык программирования Ваш любимый?'
lang = $stdin.gets.chomp

if lang != 'Ruby'
	print 'А скоро будет Ruby! '
end

case lang
when 'Ruby'
	puts 'Вы подлиза'
when 'C++'
	puts 'Круто.'
when 'Python'
	puts 'Здорово'
else
	puts "Скоро будет Ruby"
end

puts "Введите команду Ruby:"
comm = $stdin.gets.chomp

puts eval(comm)

puts "Отлично! Теперь введите команду ОС:"
OScomm = $stdin.gets.chomp

system(OScomm)