# n = 1
# num1 = gets.chomp().to_i
# while n <= num1
#   puts ("* " * n).rjust(10) # or try without r.just(10)
#   n += 1
# end


num1 = gets.chomp().to_i
num2 = num1 
i = 1
j=1
1.upto(num1) do
  
  print ' ' * num1

  print '*' * (2 * i -1)
  print "\n"
  num1 -= 1
  i += 1
end

num2.downto(1) do
    
    print " " * j
    print '*' * (2 * num2 - 1)
    print "\n"
    num2 -=1
    j += 1
end
