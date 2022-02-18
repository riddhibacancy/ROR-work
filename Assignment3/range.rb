#step

    range =  (1..10)
    # range.step(2) {|x| puts x}
    # range.step(3) {|x| puts x}

# include?

    a = ("a".."z").include?("g") 
    a = (0..10).include?(11)
    a =  ('a'..'z').include?('cc')
    a =  (0..10).include?(5)
    a = ('a'...'z').include?('z')

    # print a;

# last


    # puts (10..20).last      # 20
    # puts (10...20).last     # 20
    # puts (10..20).last(3)   # [18, 19, 20]

# to_a (convert in to array)

   print (1..7).to_a


# eql?
    print (0..2).eql?(0..2)            
    print (0..2).eql?(Range.new(0,2))  
    print (0..2).eql?(0...2)    




   
# max
    puts (0..10).max
    puts ('a'..'z').max

# min
    puts (0..10).min
    puts ('a'..'z').min

# end
    puts (0..10).end
    puts (0...10).end


# cover?
    puts (0..10).cover?(5)
    puts (0..10).cover?(11)
    puts ('a'..'z').cover?('abcd')
    puts ('a'...'z').cover?('z')
