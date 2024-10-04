puts "Здравствуй, #{ARGV[0]}!"
puts 'Какой язык программирования твой любимый?'
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
