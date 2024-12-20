class Person
	attr_reader :id, :git

	protected

	def self.valid_phone?(str)
		str.nil? || str.match?(/^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/)
	end

	def self.valid_name?(str)
		str.match?(/^[A-ZА-Я][a-zA-Zа-яА-Я\-]{0,49}$/)
	end

	def self.valid_id?(str)
		str.nil? || str.class == Integer
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
end

class Student < Person
    def initialize(surname, first_name, second_name, **params)
		self.surname = surname
		self.first_name = first_name
		self.second_name = second_name
		self.id = params[:id]
		self.git = params[:git]
        self.set_contacts(**params)
	end
  
    attr_reader  :surname, :first_name, :second_name, :telegram, :mail, :phone

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
			raise ArgumentError, "Некорректный ID"
		end
	end

	def git=(val)
		if self.class.valid_git?(val)
			@git = val 
		else
			puts "#{surname} #{first_name} #{second_name}: Некорректный git"
		end
	end

    def validate
		has_git && has_contacts
	end	

	def has_git
		!@git.nil?
	end

	def has_contacts
		!@phone.nil? || !@telegram.nil? || !@mail.nil?
	end

    def set_contacts(**contacts)
        self.class.valid_mail?(contacts[:mail]) ? (@mail = contacts[:mail]) : (raise ArgumentError, "Некорректная почта")
		self.class.valid_telegram?(contacts[:telegram]) ? (@telegram = contacts[:telegram]) : (raise ArgumentError, "Некорректный Telegram")
		self.class.valid_phone?(contacts[:phone]) ? (@phone = contacts[:phone]) : (raise ArgumentError, "Некорректный номер телефона")
	end

	def initials
		"#{surname} #{firstname[0]}.#{lastname[0]}."
	end

	def git_info
		git ? "#{git}" : "Git отсутствует"
	end

	def contact_info
		if phone_number
		  "[Номер телефона] #{phone_number}"
		elsif telegram
		  "[Telegram] #{telegram}"
		elsif mail
		  "[Почта] #{mail}"
		else
		  "Контакты отсутствуют"
		end
	end

	def get_info
		"#{initials}; Git: #{git_info}; Связь: #{contact_info}"
	end

    def to_s
        "ID: #{id || 'не указан'}, ФИО: #{surname} #{first_name} #{second_name}, Телефон: #{phone || 'не указан'}, Телеграм: #{telegram || 'не указан'}, Почта: #{mail || 'не указана'}, Git: #{git || 'не указан'}"
    end
end

class StudentShort < Person
	attr_reader :id, :surname_initials, :git, :contact 

	def initialize(id, surname_initials, git, contact)
		@id = id
    	@surname_initials = surname_initials
    	@git = git
    	@contact = contact
	end

	def self.from_student(student)
		new(student.id, student.initials, student.git_info, student.contact_info)
	end

	def self.from_string(id, info_string)
		info = info_string.split(", ")
		surname_initials = info[0]
		git = info[1] || "Git отсутствует"
		contact = info[2] || "Контакт отсутствует"
		new(id, surname_initials, git, contact) 
	end

	def to_s
    	"ID: #{id}, Фамилия И.О.: #{surname_initials}, Git: #{git}, Контакт: #{contact}"
  	end
end	