def check_password(arg1, arg2)
    proc{|a, b| a == arg1 && b == arg2 }
  end

admin = check_password("u1", "p1")

puts admin.call("u1", "p1")

puts admin.call("u1")
