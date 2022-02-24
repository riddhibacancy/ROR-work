#Local Variable

    class Class1
        def m1 
            age = 25
            puts"age in m1 is : #{age}"
        end 
    end

    def m2
        age = 26
        puts"age in m2 is: #{age}"
    end

    class1obj = Class1.new()
    class1obj.m1 

    m2   #(we can direct call the method like this if class is not there)
   
# Global variable  (we can define it with "$" sign)

    $age = 50
    class Class1
        def age
            sum = 100
            puts"age in cass1 is: #{$age} "
        end
    end
    class Class2 
        def age
            puts"age in class2 is: #{$age}"
        end
    end

    class1obj = Class1.new()
    class1obj.age
    class2obj = Class2.new()
    class2obj.age

# Instance Variable
    #(An instance variable is used to give objects their own private space to store data.)    

    class Customer
        def initialize(id, name)
           @cust_id = id
           @cust_name = name
          
        end
        def display_details()
           puts "Customer id #{@cust_id}"
           puts "Customer name #{@cust_name}"
        end
     end
     
    
     cust1 = Customer.new("100", "Akash")
     cust2 = Customer.new("200", "Yash" )
     cust1.display_details()
     cust2.display_details()


# class variable  (it is define with "@@" )

     class Customer
        @@no_of_customers = 0
        def initialize(id, name)

           @cust_id = id
           @cust_name = name
           
        end
        def display_details()
           puts "Customer id #{@cust_id}"
           puts "Customer name #{@cust_name}"
        end
        def total_customers()
           @@no_of_customers  += 1 
           puts "Total number of customers: #{@@no_of_customers}"
        end
     end
     
     cust1 = Customer.new("100", "Akash")
     cust2 = Customer.new("200", "Yash" )
    
     cust1.total_customers()
     cust2.total_customers()


#  Constant  (by writing in Capital letter we can create constant variable)
           
     class Example
        VAR1 = 100
        def show
           puts "Value of Constant is #{VAR1}"
        end
     end
     
     object = Example.new()
     object.show

    
    