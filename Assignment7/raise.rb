puts "Enter even number"
n = gets.chomp.to_i

  raise("enter even number") if n % 2 != 0


Name = ['Akash','Dhyey','Nikunj','Yash']

    def top(n)
        raise ArgumentError.new(
        
            "Expected a value of 1-#{Name.size}, got #{n}"
        
        ) if Name.size < n
      
        puts Name[0...n]
      end

     top(5)

