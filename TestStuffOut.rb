a = ('a'..'z').to_a
b = ('A'..'Z').to_a

str = ' '
if (a+b).include?(str) != true
  puts 'correct'
else
  puts 'fail'
end
