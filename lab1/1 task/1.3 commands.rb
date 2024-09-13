#Продолжение предыдущего задания. Попросить пользователя
#ввести команду языка ruby. И команду OC. Выполнить команду руби и
#команду операционной системы.

puts "Здравствуйте, " + ARGV[0]
puts "Введите Ваш любимый язык программирования:"
a = STDIN.gets.chop.to_s
if a =="Ruby" then
	puts "ВЫ ПОДЛИЗА"
else
	puts "СКОРО БУДЕТ RUBY"
end
puts "Введите команду Ruby:"
ru = STDIN.gets.chop.to_s
puts "Введите команду ОС:"
os = STDIN.gets.chop.to_s
system(os)
system("ruby -e \'#{ru}\'")
