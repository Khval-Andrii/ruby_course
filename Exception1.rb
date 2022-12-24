def sqrt(num)
    begin
      raise StandardError, "The root of a negative number does not exist in rational numbers" if num < 0
      return Math.sqrt(num).round(4)
    rescue StandardError
      "виключення #{$!.class.name} з повідомленням \"#{$!.message}\""
    end
  end
  
  puts sqrt(4)
  puts sqrt(5)
  puts sqrt(-3)