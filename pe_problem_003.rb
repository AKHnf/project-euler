require 'prime'

def largest_prime_factor(num)
  lpf = 2  # lpf = largest prime factor

  while num > lpf
    if num % lpf == 0
      num = num / lpf
      lpf = 2
    else
      lpf += 1
    end
  end

  puts lpf
end

largest_prime_factor(600851475143)
