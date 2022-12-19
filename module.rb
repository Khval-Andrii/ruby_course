module ConsoleInput
 
    def string
      puts "Enter any string"
      input = gets.chomp
      "#{input}"
    end
    
    def hash
      puts "Enter hash in format 'key: value' or 'key => value'"
      input = gets.chomp
      value = input.split(/\s*=>\s*|:\s*/)
      {"#{value[0]}": "#{value[1]}"}
      end
    end
    
    def number
      puts "Enter any number"
      input = gets.chomp
      input.match?(/[\.\,]/) ? input.to_f : input.to_i
    end
     
    def symbol
      puts "Enter any letters"
      input = gets.chomp.to_sym
      input
    end
end
puts