def third_order(dig)
    count = 0
    begin
      count += 1
      num = rand(1..dig)
      puts "What is result #{num} * #{num} * #{num}?"
      answer = gets.strip.to_i
      raise StandardError unless answer == num * num * num
    rescue StandardError
      retry if count < 3
      puts "Try next time"
    else
      puts "Good job"
    end
end

third_order(1)