def firstFactorial(num)
  arr = []
  while num > 0
    arr << num
    num -= 1
  end
  answer = arr.inject(:*)
  return answer
end


puts firstFactorial(10)
  
    