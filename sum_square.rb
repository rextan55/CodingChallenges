
y = 1
numArray = Array.new
numArray2 = Array.new

while y < 101 do
  numArray << y
  numArray2 << y
  y += 1
end

numArraysq = numArray.map!{|num| num ** 2}

sumArray = numArraysq.inject{|sum, x| sum + x}

sumArray2 = numArray2.inject{|sum, x| sum + x}

sumArray2sq = sumArray2 ** 2

z = sumArray2sq - sumArray

puts z