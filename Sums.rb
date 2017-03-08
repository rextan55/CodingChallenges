multipleThree = Array.new
multipleFive = Array.new
(0..999).each do |i|
  if i % 3 == 0
    multipleThree << i

  elsif
   i % 5 == 0
    multipleFive << i
  end

end

threeSum = multipleThree.inject{|sum, x| sum + x}
fiveSum = multipleFive.inject{|sum, y| sum + y}

puts threeSum + fiveSum
puts threeSum
puts fiveSum