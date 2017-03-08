def AlphaReverse(str)
  a = ('a'..'z').to_a
  str = str.downcase
  str = str.split(//).to_a
  i = 0
  result = []
  while i < str.length
    if str[i] == ' '
      result << str[i]
      i = i+1
  end
  x = str[i]
  y = a.reverse.index(x)
  result << a[y]
  i += 1
  end
  puts result.join
end


AlphaReverse(gets.chomp.to_s)

  

