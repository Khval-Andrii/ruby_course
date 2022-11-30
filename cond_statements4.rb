def parity() 
    puts("Enter integer number")
    number = gets.strip.to_i
    number % 2 == 0 ? puts("#{number} is even") : puts("#{number} is odd")
   end
   
parity() 