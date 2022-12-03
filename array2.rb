def count_repetitions(arr, el)
    count = 0
    arr.each { |item| item == el ? count += 1 : count }
    count
end

puts(count_repetitions([1,1,5,2,2,5,5,5,5], 5))
puts(count_repetitions([3,3,1,2,0], 5)) 