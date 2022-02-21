# define array
    a = []
    puts a;

    b = [1,2,3]
    # puts b;

    c = [1,2,[3,4,5], "akash" , "yash" , ["dhruv" , "neel"] ]
    #  puts c[2,1]

# .new
    d = Array.new(4) {|index| index ** 3}
    # puts d

    a = Array.new(2, Hash.new)
    # print a # => [{}, {}]

    a[0]['cat'] = 'feline'
    # print a

    a[1]['cat'] = 'Felix'
    # print a

# &
    a = [ 1, 1, 3, 5 ] & [ 3, 2, 1 ]   
    # print a

    a = [ 'a', 'b', 'b', 'z' ] & [ 'a', 'b', 'c' ] 
    # print a

# *
    a = [ 1, 2, 3 ] * 3  
    # print a

    a = [ 1, 2, 3 ] * "," 
    # print a

# +
    a =  [ 1, 2, 3 ] + [ 4, 5 ]    #=> [ 1, 2, 3, 4, 5 ]
    # print a

    c = a + [ "d", "e", "f" ]
    # print c

# -
   a = [ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ] 
   #print a                #=> [3,3,5]
   
# <<
    a = [ 1, 2 ]
    a << "c" << "d" << [ 3, 4 ]
    # print a              # [1, 2, "c", "d", [3, 4]]

# ==

    a = [ "a", "c" ]    == [ "a", "c", 7 ]  
    # print a
    a = [ "a", "c", 7 ] == [ "a", "c", 7 ]   
    # print a

# 
    a = Array.new
    a[4] = "4";                
    # print a 

    a[0, 3] = [ 'a', 'b', 'c' ] 
    # print a    # ["a", "b", "c", nil, "4"]

    a[0, 3] = [ 'a' ] 
    # print a   # ["a", nil, "4"]

# flatten  (convert multi dimension arry to single dimension array)

    a = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]]
    # a = a.flatten
    # print a

# cycle
    a = ["a", "b", "c"]
    # a.cycle {|x| puts x}       # print, a, b, c, a, b, c,.. forever.
    # a.cycle(2) {|x| puts x}   # (print a b c two times)

# .each

    a = ["Akash" , "yash" , "dhruv" , "neel"]
  
    # a.each {|x| puts x } 

    # a.each {|x| puts x[0]} # print first letter of each name

    a = [ ["Akash" , "yash"] , ["dhruv" , "neel"]]
     
    # a.each {|x| puts x[0]}

    # a.each {|x| x.each {|y| puts y[0]}}   # print first letter of each name in multi dimantation array 

# unshift
    a = [ "b", "c", "d" ]
#    print a.unshift("a")   # ["a", "b", "c", "d"]
#    print a.unshift(1, 2)  # [1, 2, "a", "b", "c", "d"]

# uniq!  (remove duplicate element) ("if there is no duplicate element it will return nil")
    #  (if we use " ! " after uniq it will chane the array  ) 


    a = [ "a", "a", "b", "b", "c" ]
    # print a.uniq! #  ["a", "b", "c"]
    
    b = [ "a", "b", "c" ]
    # print b.uniq! # nil

    c = [["student","sam"], ["student","george"],["student","sam"],["teacher","matz"] ,["teacher","sudent"]]
    # print c.uniq! {|s| s.first}

# transpose (transposes the rows and columns)
    
    a = [[1,2], [3,4], [5,6]]
    # print a.transpose

# to_h
    # print  [[:foo, :bar], [1, 2]].to_h
    # print ["foo", "bar"].to_h {|s| [s.ord, s]}  # ( .ord return the codepoint of the first character of the string )

# take_while  (it will take value form array until the condition is true)
    a = [1, 2, 0,3, 4, 5, 0, 1]
    # print a.take_while {|i| i < 3}

# take  (Returns first n elements from the array.)
    a = [1, 2, 3, 3, 5, 4, 0]
    # print a.take(4)

# flat_map
    
    a = [[1,2],[2,3],[3,4],[4,5],[6,7,8] , 8 ]
    
    # print a.flat_map { |a| a }

    a = [12, 18]
    # print a.flat_map { |el| [2*el, 3*el] }

# push opration
    a =  [1,2,3,4,5]
    a.push(100)

    print a
    


# push opration
    a =  [1,2,3,4,5]

    a.pop()
    print a

# reverse arr
    a =  [1,2,3,4,5]

    a=a.reverse()
    print a
        
# delete at
    a =  [1,2,3,4,5]

    a.delete_at(1)
    print a