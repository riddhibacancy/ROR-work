puts "How many element you want in an array"
a = gets.to_i
b = [] 

puts "enter array element"
while a!=0 do
   b << gets.to_i
   a = a-1
end

c = b.uniq

while   c.length != b.length 
     c << nil    
end
puts "Uniq array is"
print c




# ====
# output

# Array_Practicals$ ruby Exercise3.rb
# How many element you want in an array
# 10
# enter array element
# 0
# 0
# 1
# 1
# 1
# 2
# 2
# 3
# 3
# 4
# Uniq array is
# [0, 1, 2, 3, 4, nil, nil, nil, nil, nil]