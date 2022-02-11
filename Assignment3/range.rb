range =  (1..10)
# range.step(2) {|x| puts x}
# range.step(3) {|x| puts x}

# include?

    a = ("a".."z").include?("g") 
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