class Parent
    private
    def method1
      'abc'
    end
  end
  
  class Child < Parent
    def method1
      super
    end
  end
  
  child = Child.new
  puts child.method1