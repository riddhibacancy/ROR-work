# puts "How many element you want in an array"
# a = gets.to_i
# b = [] 

# puts "enter array element"
# while a!=0 do
#    b << gets.to_i
#    a = a-1
# end

# c = numbers.uniq
# while   c.length != numbers.length 
#      c << nil    
# end
# print c

numbers = [0,0,1,1,1,2,2,3,3,4]
c = numbers.uniq

c += [nil]*(numbers.length - c.length)  
c


# ====
# output
# Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]
  
