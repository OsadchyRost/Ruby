#Принять имя пользователя как аргумент программы.
#Поздороваться с пользователем с использованием форматирования
#строки. Спросить какой язык у пользователя любимый, в случае, если это
#ruby, ответить что пользователь подлиза, иначе обязательно ответить,
#что скоро будет ruby и поставить различные комментарии для
#нескольких языков.

puts "Здравствуйте, " + ARGV[0]
puts "Введите Ваш любимый язык программирования:"
a = STDIN.gets.chop.to_s
if a =="Ruby" then
	puts "Вы подлиза"
else 
	puts "Скоро будет ruby"
end
