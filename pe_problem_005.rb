def least_common_multiple(num)
  lcm = 1

  for i in 2..num
    lcm *= i / greatest_common_divisor(i, lcm)
  end

  return lcm
end

def greatest_common_divisor(num_one, num_two)

  while 0 != num_two
    temp = num_one
    num_one = num_two
    num_two = temp % num_two
  end

  return num_one
end

puts least_common_multiple(20)
