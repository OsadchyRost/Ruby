class Student
    def initialize(id:nil, surname:, first_name:, second_name:, phone:nil, telegram:nil, mail:nil, git:nil)
      @id=id if id!=nil
      @surname=surname
      @first_name=first_name
      @second_name=second_name
      @phone=phone if phone!=nil
      @telegram=telegram if telegram!=nil
      @mail=mail if mail!=nil
      @git=git if git!=nil
    end
  
    attr_reader :id, :surname, :first_name, :second_name, :phone, :telegram, :mail, :git
    attr_writer :id, :surname, :first_name, :second_name, :phone, :telegram, :mail, :git

    def to_s
        "ID: #{id || 'не указан'}, ФИО: #{surname} #{first_name} #{second_name}, Телефон: #{phone || 'не указан'}, Телеграм: #{telegram || 'не указан'}, Почта: #{mail || 'не указана'}, Git: #{git || 'не указан'}"
    end
    
end