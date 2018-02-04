require 'prime'
def fibonacci(n)
  (((1 + Math.sqrt(5))**n - (1 - Math.sqrt(5))**n ) / ((2**n)*Math.sqrt(5))).to_i
end

factors = 1
i = 1
while factors < 1000
  factors = 1
  arr = Prime.prime_division(fibonacci(i))
  arr.map! {|ele| ele.last + 1}
  arr.each do |ele|
    factors *= ele
  end
  if factors > 1000
    puts fibonacci(i)
    puts i
  end
  i += 1
end
