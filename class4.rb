class Pizza
    attr_writer :ingredients
    attr_reader :d
    @@count = 0
    def initialize(d)
      @@count += 1
      @ingredients = []
      @number = @@count
      @d = d
    end
    
    def description
      "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}]."
    end
  end

pizza1 = Pizza.new(24)
puts pizza1.description

pizza1.ingredients = ['mushroom']
puts pizza1.description
puts pizza1.number