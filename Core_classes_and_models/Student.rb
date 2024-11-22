class Student
    def initialize(surname, first_name, second_name, **params)
		@surname = surname
		@first_name = first_name
		@second_name = second_name
		@id = params[:id]
		self.phone = params[:phone]
		@telegram = params[:telegram]
		@mail = params[:mail]
		@git = params[:git]
	end
  
    attr_accessor  :surname, :first_name, :second_name, :id, :telegram, :mail, :git

    attr_reader :phone

    def phone=(val)
		if self.class.valid_phone_num?(val)
			@phone = val
		else 
			puts "#{surname} #{first_name} #{second_name}: Некорректный номер телефона"
		end
	end

    def self.valid_phone_num?(str)
		str.nil? || str.match?(/^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/)
	end
    
    def to_s
        "ID: #{id || 'не указан'}, ФИО: #{surname} #{first_name} #{second_name}, Телефон: #{phone || 'не указан'}, Телеграм: #{telegram || 'не указан'}, Почта: #{mail || 'не указана'}, Git: #{git || 'не указан'}"
    end
end