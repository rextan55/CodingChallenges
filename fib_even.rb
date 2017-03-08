$fibEven = Array.new
def fib(n)
  x = 1
  y = 0
  n.times {
    x, y = x + y, x
    if x%2==0
      $fibEven << x
    end
  }
  y

  puts x
end




fib(32)

puts $fibEven

fibSum = $fibEven.inject{|sum, z| sum + z}

puts fibSum