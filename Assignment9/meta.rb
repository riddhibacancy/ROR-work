#send
      # send() is used to pass message to object. send() is an instance method of the Object class. 
      # The first argument in send() is the message that you're sending to the object - that is, the name of a method.
      #  It could be string or symbol but symbols are preferred. Then arguments those need to pass in method,
      #   those will be the remaining arguments in send().

a = 10
puts 1.send('+',2)



class Hello
  def hello(*args)
    puts 'Hello ' + args.join(' ')
  end
end
h = Hello.new
h.send :hello, 'from', 'Akash' 


# ==

class Student
    attr :name, :maths , :science , :english
    def initialize(name,maths,science,english)
        @name = name
        @maths = maths
        @science = science
        @english = english
        
    end
end

d = Student.new "Akash", 50 , 100 , 200
puts "Enter subject name"
subject = gets.chomp

puts "#{d.name} got #{d.send(subject)} marks in #{subject}"




# ==

  class User
    attr_accessor :name, :email, :pin, :address
  
    def assign_values(values)
      values.each do |k , v|
        self.send("#{k}=", v)
        end
    end
  end
  
  user_info = {
    name: 'Akash',
    email: 'akash@gmail.com',
    address: '203, balitha vapi.',
    pin: 396191
  }
  
  account = User.new

  account.assign_values(user_info) # With single line we can assign n number of attributes
  
  
  puts account.name
  puts account.pin



# method_missing  
  
    # is a method that ruby gives you access inside of your objects a way to handle situations 
    # when you call a method that doesn't exist. 


    class Animal
      def walk
        puts "cows can walk"
      end
      def method_missing(m,*arg,&block)
       puts "hello world"
       puts arg
      #  block.call
      end
    end
     a = Animal.new
     a.walk
     a.fly
     a.run do
       puts "Akash"
     end


    class Animal
      def walk
        puts "cows can walk"
      end
      def method_missing(m,*arg,&block)
        if m.to_s == "fly"
          puts "cows can not fly"  
        end
        if m.to_s == "run"
          puts "cows can not run fast"  
        end
      end
    end

    cow = Animal.new
    cow.walk
    cow.fly
    cow.run


# The instance_eval method defines a method for one object only,
#  where the class_eval method defines it for ALL objects or instances of a class.


# class eval

    class Person
    end
    
    Person.class_eval do
      def say_hello
       puts "Hello!"
      end
    end
    
    akash = Person.new
    akash.say_hello 


    class Demo1
      def initialize(name , surname)
          @name = name
          @surname = surname
      end
    end
  
    Demo1.class_eval do
        def info
            puts "my name is #{@name} #{@surname}"
        end
    end
    
    d1 = Demo1.new("Akash", "Sondarva")
    d1.info



# instance_eval 
    class Person
    end
    
    Person.instance_eval do
      def human
        puts "true"
      end
      def demon
        puts "false"
      end
    end
    
    Person.human
    Person.demon

# singleton method 
    # a singleton method is a method that is defined only for a single object.

    class Vehicle
      def wheels
        puts "There are many wheels"
      end
    end

    train = Vehicle.new 

    car = Vehicle.new   
      
    # Singleton method for car object
    def car.wheels   
      puts "There are four wheels"
    end
      
   
    train.wheels         
    car.wheels






# define_method 
#     it is a method defined in Module class which you can use to create methods dynamically. 
    
    class Buy

      ["phone", "laptop"].each do |method|
        define_method "get_#{method}" do
          puts "buy new " + method.to_s
        end
      end
    
    end
    
    buy = Buy.new
    
    buy.get_phone
   
    buy.get_laptop
  

    class Info

      attr_accessor :name, :surname , :addr
  
      def initialize(name, surname, addr)
          @name = name
          @surname = surname
          @addr = addr
      end
  
      def self.add_new_method(name)
        
          define_method("#{name}_details") do
              puts "My name is #{self.name} #{self.surname} i am from #{self.addr}"
          end
      end
  end
  
  i1 = Info.new("Akash", "Sondarva" , "vapi")
  i2 = Info.new("Yash", "Bhandari", "surat")
  Info.add_new_method(i1.name)
  Info.add_new_method(i2.name)
  i1.Akash_details
  i2.Yash_details



