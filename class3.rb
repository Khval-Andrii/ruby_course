class Pizza
    @@count = 0
    @@fail = 0
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
        @@fail += 1
      end
    end
    
    def self.failInstance
      @@fail
    end
  end