
$x = 999
$y = 999
$palArray = Array.new


until $y < 100 do
  $x -= 1
  if $x < 100
    $y -= 1
    $x = 999
  end
  $z = ($x * $y)
  $zstring = $z.to_s
  if $zstring.reverse == $zstring
  $palArray << $z
  end

end

puts $palArray.max
