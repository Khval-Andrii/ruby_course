class Pizza
    @@count = 0
    def initialize(ingredients)
      @@count += 1
      @ingredients = ingredients
      @number = @@count
    end
    
    def description
      puts "Піца № #{@number} містить [#{@ingredients.join(",")}]."
    end
  end

pizza1 = Pizza.new(['mushroom', 'cheese'])
pizza2 = Pizza.new(['mushroom', 'cheese', 'cherry'])
pizza2.description