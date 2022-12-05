def matrix_params(arr)
    m = u = o = 0
    arr.each_with_index do |i, ii|
      i.each_with_index do |j, ji|
        if ii == ji
          m += j
        elsif ii < ji
          u += j
        elsif ii > ji
          o += j
        end
      end
    end
    {"m"=>m, "u"=>u, "o"=>o}
end

puts(matrix_params([[1,2,3],[4,5,6],[7,8,9]]))
puts(matrix_params([[1,2,2],[3,1,2],[3,3,1]]))