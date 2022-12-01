lambda1 = lambda{ |num| num.to_s.length < 6 ? 
    puts(num.to_s.length) : 
    puts("Недопустима кількість розрядів. Число повинно бути не більше, ніж 5-розрядним")
}

lambda1.call(15)