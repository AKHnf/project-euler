def fib(n, cache = {})
  if n == 0 || n == 1
    return n
  end

  cache[n] ||= fib(n - 1, cache) + fib(n - 2, cache)
end

sum = 0

(1..35).each do |i|
  fib(i)

  if fib(i) <= 4000000 && fib(i) % 2 == 0
    sum += fib(i)
  end
end

puts sum
