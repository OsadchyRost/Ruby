require './student.rb'

student1 = Student.new("Иванов", "Иван", "Иванович", id: 1,  phone: "89447142211", telegram: "@username", mail: "sdf@mail.ru", git: "ggdfjrjyxdjdt")



student1_short = StudentShort.from_student(student1)
puts student1_short.to_s