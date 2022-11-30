def sum
    yield(4) + yield(0) + yield(-12)
  end
  result = sum {|i| i < 0 ? i**2 : i}
  puts result