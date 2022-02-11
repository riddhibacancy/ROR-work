# define hash 

    a = { "akash" => 10, "yash" => 6 }
    # puts a
    # print a["akash"]

#  assoc()  (print key and vlaue in array)
    
    h = {   "colors"  => ["red", "blue", "green"],
        "letters" => ["a", "b", "c" ]}

    # print h.assoc("letters")  #=> ["letters", ["a", "b", "c"]]
    # print h.assoc("foo")

# clear

    h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
    # print h.clear 

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

 