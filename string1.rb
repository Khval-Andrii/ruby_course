def palindrome?(str)
    str.downcase == str.downcase.reverse
end

puts(palindrome?("Алла"))
puts(palindrome?("Анна"))
puts(palindrome?("22022022"))