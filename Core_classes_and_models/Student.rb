class Student
  def initialize(surname, first_name, second_name, **params)
		@surname = surname
		@first_name = first_name
		@second_name = second_name
		@id = params[:id]
		@phone = params[:phone]
		@telegram = params[:telegram]
		@mail = params[:mail]
		@git = params[:git]
	end
  
    attr_accessor :id, :surname, :first_name, :second_name, :phone, :telegram, :mail, :git

    def to_s
        "ID: #{id || 'не указан'}, ФИО: #{surname} #{first_name} #{second_name}, Телефон: #{phone || 'не указан'}, Телеграм: #{telegram || 'не указан'}, Почта: #{mail || 'не указана'}, Git: #{git || 'не указан'}"
    end
    
end