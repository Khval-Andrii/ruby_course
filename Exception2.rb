class PhoneFormatException < StandardError
    def initialize(var)
      @var = var
    end
  
    def to_s
      "Phone number #{@var} is incorrect. You should enter phone in format +38dddddddddd"
    end
  end
  
  module Validation
    def phone_valid?(phone)
      phone.match?(/\+38[\d]{10}/)
    end
  end
  
  class User
    include Validation
    attr_reader :name
    
    def initialize(name)
      @name = name
    end
  
    def phone=(phone)
        raise PhoneFormatException, phone unless phone_valid?(phone)
        @phone = phone
    end
  end
  
  user = User.new("Peter")
  puts user.phone = '80969641337'