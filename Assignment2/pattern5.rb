num1 = gets.chomp().to_i
i = 1
b = 1

1.upto num1 do
 
    puts "* " * i

    i += 1;
    
end

num1.downto 1 do
   
    if b != 1  
        
            puts "* " * num1
       
            num1 -= 1;
            
     
    else b == 1
        num1 -= 1;
        b=2
    end
end