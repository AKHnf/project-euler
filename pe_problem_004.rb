def largest_palindrome_product
  lpf = 0

  for i in 100..999
    for j in i..999
      temp = i * j

      if temp.to_s == temp.to_s.reverse && lpf < temp
        lpf = temp
      end
      j += 1
    end
    i += 1
  end

  puts lpf
end

largest_palindrome_product
