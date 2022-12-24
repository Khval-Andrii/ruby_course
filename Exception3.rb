def third_order(dig)
    count = 0
    begin
      count += 1
      num = rand(dig)
      "What is result #{num} * #{num} * #{num}?"
      answer = gets.strip
      answer == num * num * num
    rescue
      retry if count <= 3
    else
      Good job
    end
  end