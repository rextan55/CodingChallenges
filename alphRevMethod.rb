#def AlphaReverse(str)
a = ('a'..'z').to_a

str = "This is a test"
str = str.downcase

str = str.split(//).to_a

i = 0
while i < str.length
  x = str[i]
  y = a.reverse.index(x)
  puts a[y]
  i += 1
end

  

