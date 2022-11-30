divider = 21
counter = 0
loop do
    print "Введіть число, яке буде ділитися на #{divider} : "
    num = gets.strip.to_i
    counter += 1
    if num == divider
        puts ("Число не повинно дорівнювати #{divider}")
    elsif num % divider == 0
        puts ("Чудово")
        break   
    else
        puts ("Невірно. Спробуйте ще раз")  
    end
    if counter == 5
        puts ("Кількість спроб завершилася :(") 
        break
    end
end