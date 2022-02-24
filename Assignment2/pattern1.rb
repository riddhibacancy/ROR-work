num1 = gets.chomp().to_i

# num1.downto(0){| i | 
#     puts i.downto(1){|j| print "*"}}


# 10.times do |i|
#   puts 1
# end

for i in 1..num1 do
  
    def printer(var, str)
      print "#{str}" *  var 
    end
  
    printer(i, " ")
    printer(num1, "* ")
    print "\n"
    num1 -= 1
  end

