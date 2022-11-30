def sum
    yield(4) + yield(0) + yield(-12)
  end
  result = sum do |i|
                if i < 0
                  i**2
                else
                  i 
                end
              end