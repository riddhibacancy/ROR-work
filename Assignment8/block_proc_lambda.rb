

# block

            
        def each(array, &block)  #  block.call(el) will call the block of code which is written after each(names)
            i = 0
            while i < array.size
                el = array[i]
                block.call(el)
                i += 1
            end


        end

        each(names) do |n|   # block.call(el) will run code between this do and end.
            puts n
        end

        #  =================

        def each1(array, &block1)  

            if !block_given?
                puts "there is no block given"
                return
            end
            i = 0
            while i < array.size
                el = array[i]
                block1.call(el)
                i += 1
            end
        end
        each1(names) 



# Proc
    # A Proc object is a block of code, which can be stored in a local variable,
    #  passed to a method or another Proc, and can be called.

        square = Proc.new {|x| puts x**2 }

    square.call(3)  #=> 9
    square.(2)      
    square[1]  


    names = ['Akash','Yash' , 'neel','dhyey'] 


    print_proc = Proc.new { |n |  puts "#{n}"}

    def each2(array, &block) 
        i = 0
        while i < array.size
            el = array[i]
            block.call(el)
            i += 1
        end
    end

    each2(names, &print_proc)


# lambda

        print_lambda = ->(n) { puts "#{n}"}  

            # or we can use
            #  print_lambda = lambda { |n| puts "jatuuuuuuu #{n}"}  

        def each3(array, &block) 
            i = 0
            while i < array.size
                el = array[i]
                block.call(el)
                i += 1
            end
        end

        each3(names, &print_lambda)
