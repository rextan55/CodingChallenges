y = 1
lcmArray = Array.new

while y <21
  lcmArray << y
  y += 1
end

x = lcmArray.reduce(:lcm)

puts x