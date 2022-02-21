#simple arguments (passing string)

    def name(first_name,age)
        "my name is " + first_name + " " + " and my age is : " + age
    end
    puts name("Akash Sondarva","21")




#Named Arguments

    def method name:, email:, addr:
        puts ("name is " + name + ". Email is " + email + ". addr is "  + addr)
    end
 
    method email:"akash@gmail.com",name:"Akash",addr: "Vapi" 
            # (In named argument order dosen't matter)

  
            

 def method name: "Akash", email:, addr: "Vapi"
        puts ("name is " + name + ". Email is " + email + ". addr is "  + addr)
    end
 
    method email:"akash@gmail.com",addr: "Balitha"
            # (if we don't pass the value it will take by default value from method function. 
            #   In our case we did not pass name value so it will take "Akash" as the value.
            #    If we pass the value it will ovrride by default value. So "Balitha" will override vapi)


# variable argument (it will take all value as an single array)

            def sum(*a)
                y = 0
                print a

                a.each{|x| y += x } 
                print y
                
            end
          
            sum(10,20,30,40,50)  