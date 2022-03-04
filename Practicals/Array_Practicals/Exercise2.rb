
# puts "Enter the number"
# a = gets.to_i
 
# b = a.to_s
# c = b.reverse
# if b == c then
#     puts "given number is pelindrome"
# else
#    puts " number is not pelindrome"
# end

number = 12221

def pelindrome(n)
    n.to_s == n.to_s.reverse
end

print pelindrome(number)