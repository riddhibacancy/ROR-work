 puts "How many element you want in an array"
 n = gets.to_i
 array = [] 

 puts "enter array element"
 while n!=0 do
    array << gets.to_i
    n = n-1
 end

puts "enter the sum"
sum = gets.to_i

 b = (0...array.length).to_a
 c = b.combination(2).to_a
 d = c.select{|x,y| array[x] + array[y] == sum}
 puts "ans"
 print d




 


# =======

# output

#  /Array_Practicals$ ruby Exercise1.rb
#  How many element you want in an array
#  4
#  enter array element
#  2
#  7
#  11
#  15
#  enter the sum
#  13
#  ans
#  [[0, 2]]




