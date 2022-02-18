# define hash 

    a = { "akash" => 10, "yash" => 6 }
    # puts a
    # print a["akash"]

#  assoc()  (print key and vlaue in array)
    
    h = {   "colors"  => ["red", "blue", "green"],
            "letters" => ["a", "b", "c" ]}

    # print h.assoc("letters")  #= ["letters", ["a", "b", "c"]]
    #  print h.assoc("food")

# clear

    h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
    #  print h.clear 

# compact (return new hash with nil key and value remove)
    h = { a: 1, b: false, c: nil }
    # print h
    # print h.compact     
     
# delete

    h = { "a" => 100, "b" => 200 }
    h.delete("a")  
    # print h

# delete_if 

    h = { "a" => 100, "b" => 200, "c" => 300 }
    h.delete_if {|key, value| key >= "b" }
    # print h

 # fetch() method
    
    a = { "a" => 100, "b" => 200 }
    b = {"a" => 100}
    c = {"a" => 100, "c" => 300, "b" => 200}
    

    puts  a.fetch("a")
    puts b.fetch("a")
    puts c.fetch("b")

# member? 

    puts a.member?("a")
    puts b.member?("c")
    puts c.member?("a")

# select
    h = Hash[a: 1, b: 2, c: 3, d: 4]
    puts h.select {|key, value| value < 4}

# reject
    
    puts h.reject {|key, value| value > 1}
        
# keep_if
    puts h.keep_if {|key, value| value < 4}


# any?
    a = Hash[a: 1, b: 2, c: 3, d: 4, e: 8]
    puts a.any?([:a, 1])
    puts a.any? {|key, value| value > 3}


# has_key? and key?
    puts a.has_key?(:a)
    puts a.key?(:b)
   
# has_value? and value?

   puts a.has_value?(3)
   puts a.value?(4)


# length and size
    a = Hash[a: 1, b: 2, c: 3]
    puts a.length
    puts a.size

