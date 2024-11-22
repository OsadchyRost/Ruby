require './student.rb'

student1 = Student.new(id: 1, surname: "Иванов", first_name: "Иван", second_name:"Иванович", phone:"89447142211", telegram:"sdg", mail: "sdf@mail.ru", git: "github.com/ivan")
student2 = Student.new(id: 2, surname: "Полевая", first_name: "Инна", second_name:"Олеговна", phone:"89287133211", telegram:"sdsdg", mail: "sdsdf@mail.ru", git: "github.com/polya")
student3 = Student.new(id: 3, surname: "Петров", first_name: "Петр", second_name:"Петрович", phone:"89287142561", telegram:"sdsdgg", mail: "afsgf@mail.ru", git: "github.com/petr") 

puts student1
puts student2
puts student3
