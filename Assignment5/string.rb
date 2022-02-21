# difference between (" ") and (' ')

    name = "Akash"
    # puts "your name is #{name} "
    # puts 'your name is #{name}'

    # puts "Akash \n Sondarva"
    # puts 'Akash \n sondarva'

# Access String Elements

    str = "hello Akash welcome back"

    # puts str["hello"]
    # puts str[1]
    # puts str[0,11]

# String Replication

    str = "Akash\n"
    # puts str * 7

#size,length

    str = "Akash\n"
    # puts str.size


# <<  ("Add sondarva behind Akash")
    s = "Akash "
    s << "Sondarva"
    # puts s 

 # Removing Last Character
    s = "Akash Sondarva"
    puts s.chomp("va") 
    
# counting character
    
    puts s.count('h')  ## => 2

# string comparison
    # -1 if other_string is larger.
    # 0 if the two are equal.
    # 1 if other_string is smaller.

        # puts 'akash' <=> 'akash' 
        # puts 'akash' <=> 'akashhhh'    
        # puts 'akashhh' <=> 'akash'

#If a string is a number
        s = "Hello world 44"
        str = "123"
        puts s.match?(/\A-?\d+\Z/)
        puts str.match?(/\A-?\d+\Z/)
        
# check if string contain number or not      
        puts s.match?(/\d/) 

# byteslice
        s = '0123456789' 
        s = "Akash Sondarva"
    # puts  s.byteslice(2)   
    # puts s.byteslice(4, 3) 
    # puts s.byteslice(6, 30) 


# gusb (it will replace the sting)
    s = "Akash Sondarva"

    puts s.gsub("Sondarva", "Heyyy") 

#strip (to remove white space)
    s = "   Akash   "
    puts s.strip # remove the white space from both side
    puts s.rstrip # remove the white space from right side
    puts s.lstrip # remove the white space from left side


# String Prefix & Suffix

  
  str = "Akash Sondarva"
  s = "   Akash   "
    puts str.delete_prefix("Akash")
    puts str.delete_suffix("Sondarva")

#start_with & end_with

    str = "Akash Sondarva"
    s = "   Akash   "
        puts str.start_with?("Akash")
        puts s.start_with?(' ')
        puts str.end_with?("sondarva")
        puts s.end_with?("h")