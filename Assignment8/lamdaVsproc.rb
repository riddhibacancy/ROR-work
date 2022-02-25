#  Main difference between lamda and proc is that lambda will gif you errorif there are wrong numbers of argument
    # But Proc will not give you an error

    # lambda
        names = ['Akash','Yash' , 'neel','dhyey'] 

        print_lambda = lambda { |n | puts "#{n}"}  # if we write |n,m| lambda will give you error but Proc will not give an error

            def each(array, &block) 
                i = 0
                while i < array.size
                    el = array[i]
                    block.call(el)
                    i += 1
                end
            end

            each(names, &print_lambda)

    # Proc
        names = ['Akash','Yash' , 'neel','dhyey'] 

        print_proc = Proc.new  { | n, m | puts "#{n}"}  

            def each1(array, &block) 
                i = 0
                while i < array.size
                    el = array[i]
                    block.call(el)
                    i += 1
                end
            end

            each1(names, &print_proc)



# other diff is in return  satement

            names = ['Akash','Yash' , 'neel','dhyey'] 

    # lambda (it will retun the n value from the block)
                printL = lambda do |n|
                    puts " lambdaa #{n}"
                    return n
                    end
        
                    def each3(array, &block) 
                        i = 0
                        while i < array.size
                            el = array[i]
                            var = block.call(el)
                            puts var
                            i += 1
                        end
                    end
        
                    each3(names, &printL)

    # proc 
    
                print_proc = Proc.new  do |n|
                    puts " procc #{n}"
                    return n
                end
    
                def each2(array, &block) 
                    i = 0
                    while i < array.size
                        el = array[i]
                        var = block.call(el)
                        puts var
                        i += 1
                    end
                end
    
                each2(names, &print_proc)




                
    