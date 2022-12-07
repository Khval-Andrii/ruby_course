def remove_vowels(str)
    re = /[aeoiu]/i
    return str if str.include?("a, e, o, i, u")
    str.gsub(re, "")
end

puts(remove_vowels("Hello World!"))
puts(remove_vowels("This is a ball"))
puts(remove_vowels("Thss"))
puts(remove_vowels("OAK"))