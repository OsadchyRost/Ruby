class Student
    def initialize(surname, first_name, second_name, **params)
		self.surname = surname
		self.first_name = first_name
		self.second_name = second_name
		self.id = params[:id]
		self.phone = params[:phone]
		self.telegram = params[:telegram]
		self.mail = params[:mail]
		self.git = params[:git]
	end
  
    attr_reader  :surname, :first_name, :second_name, :id, :telegram, :mail, :git, :phone

    def surname=(val)
		if self.class.valid_name?(val)
			@surname = val
		else
			raise ArgumentError, "Некорректная фамилия"
		end
	end

    def first_name=(val)
		if self.class.valid_name?(val)
			@first_name = val
		else
			raise ArgumentError, "Некорректное имя"
		end
	end

	def second_name=(val)
		if self.class.valid_name?(val)
			@second_name = val
		else
			raise ArgumentError, "Некорректное отчество"
		end
	end

    def id=(val)
		if self.class.valid_id?(val)
			@id = val 
		else
			puts "#{surname} #{first_name} #{second_name}: Некорректный ID"
		end
	end

	def telegram=(val)
		if self.class.valid_telegram?(val)
			@telegram = val 
		else
			puts "#{surname} #{first_name} #{second_name}: Некорректный telegram"
		end
	end

	def mail=(val)
		if self.class.valid_mail?(val)
			@mail = val 
		else
			puts "#{surname} #{firstname} #{lastname}: Некорректная почта"
		end
	end

	def git=(val)
		if self.class.valid_git?(val)
			@git = val 
		else
			puts "#{surname} #{first_name} #{second_name}: Некорректный git"
		end
	end

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
    
    def self.valid_name?(str)
		str.match?(/\A[A-ZА-Я][a-zа-яё\-']{1,}\z/)
	end

	def self.valid_id?(str)
		str.nil? || str.class == Integer ? true : str.match?(/^(\d+)$/) ? true : false
	end

	def self.valid_telegram?(str)
		str.nil? || str.match?(/\A@[a-zA-Z0-9_]{5,}\z/)
	end

	def self.valid_mail?(str)
		str.nil? || str.match?(/\A[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[^@\s]+\z/)
	end

	def self.valid_git?(str)
		str.nil? || str.match?(/\Ahttps:\/\/github.com\/[a-zA-Z0-9_-]+\z/)
	end

    def to_s
        "ID: #{id || 'не указан'}, ФИО: #{surname} #{first_name} #{second_name}, Телефон: #{phone || 'не указан'}, Телеграм: #{telegram || 'не указан'}, Почта: #{mail || 'не указана'}, Git: #{git || 'не указан'}"
    end
end

