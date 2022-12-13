class Pizza
    @@count = 0
    def initialize(d, ingredients)
      if d == 25 || d == 50
        @@count += 1
        @ingredients = ingredients
        @number = @@count
        @d = d
      else
        @@count = 0
        @ingredients = []
        @number = @@count
        @d = 0
      end
    end
    
    def description
      "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
    end
  end

  pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
puts pizza2.description