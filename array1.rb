def count_words(sentence)
    arr = sentence.split(" ")
    arr.size
  end

puts(count_words("Hello World"))
puts(count_words("This is a ball"))