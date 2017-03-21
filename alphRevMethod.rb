def AlphaReverse(str)
  #lower case array
  a = ('a'..'z').to_a
  #upper case array
  b = ('A'..'Z').to_a
  #turn the string into an array
  str = str.split(//).to_a
  #establish loop variable
  i = 0
  #create result array variable
  result = []
  #start while loop
  while i < str.length
    #shorten the result variable
    x = str[i]
    #detect if its an upper or lower case string
    if (a+b).include?(x)
      #if its in a or b, move on
      break
      #if it is, put it in the array and move on
    else
      #convert to a string and slap it in the array
      result << x.to_s
      #continue in the loop
      i = i +1
    end
    #if its lower case
    if x == x.downcase
      #find the reverse index in lower case and call it y
      y = a.reverse.index(x)
      #slap the reverse index in the result array
      result << a[y]
      puts result
      # move up in the array
      i = i + 1
      #if its upper case
    elsif x == x.upcase
      #find the reverse index in upper case and call it z
      z = b.reverse.index(x)
      #slap the variable in there
      result << b[z]
      puts result
      #move up in the loop
      i = i + 1
      #end the if statements
    end
    #end the while loop
  end
#display the results
  puts result
end


AlphaReverse(gets.chomp.to_s)

  

