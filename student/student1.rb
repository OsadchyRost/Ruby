class Student
    attr_accessor :id, :surname, :first_name, :middle_name, :phone, :telegram, :email, :git
    
    def initialize(surname, first_name, middle_name, id = nil, phone = nil, telegram = nil, email = nil, git = nil)
      @id = id
      @surname = surname
      @first_name = first_name
      @middle_name = middle_name
      @phone = phone
      @telegram = telegram
      @email = email
      @git = git
    end
  
  end

  
