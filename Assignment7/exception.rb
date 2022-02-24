
# NoMemoryError

    # (NoMemoryError is raised by Ruby when memory allocation fails.)
    #  (it indicates that Ruby attempted to initialize an object that would consume more memory than the system allows.)

    begin
        s = String.new("1" * (2**62))
    rescue NoMemoryError => e
        puts e
    end
   
  

# RangeError

    # on 64 bit systems, the maximum allowed value of a String is 2**63 - 1.
    # We can see that Ruby will not allow us to allocate a string longer than that:

     begin
        s = String.new("1" * (2**63))
     rescue RangeError => exception
         puts exception
     end


# ScriptError
    # ScriptError is the superclass for errors raised when a script can not be executed because of a 
         # LoadError, NotImplementedError or a SyntaxError.
    # ScriptErrors will not be rescued unless it is specified explicitly. 

# LoadError

    #  This exception is raised when a file required fails to load

     begin
        require 'Akash/Harsukhbhai/Sondarva'
     rescue LoadError => exception
         puts exception
     end

#  SyntaxError

    # SyntaxError is raised when Ruby encounters code with an invalid syntax:

    begin
        eval("puts('Forgot something)")
    rescue SyntaxError => exception
        puts exception
    end

# SignalException
    
    # Raised when a signal is received.
                    #    (kill(*args) public sends the given signal to the specified process id(s) if pid is positive)
    begin
        Process.kill('HUP',Process.pid)
        sleep # wait for receiver to handle signal sent by Process.kill
      rescue SignalException => e
        puts "received Exception #{e}"
      end


# StandardError.
    # When you don't specify an exception class at all, ruby assumes you mean StandardError. So the code below is identical to the above code:
        
        # When you write rescue without one or more classes, it is the same as writing:

        # begin
        #   ...
        # rescue StandardError => e
        #   ...
        # end
    begin
      do_something()
    rescue => exception
        puts exception
    end
   
# ArgumentError

    # Ruby's ArgumentError is raised when you call a method with incorrect arguments
    def name(first_name,age)
        "my name is " + first_name + " " + " and my age is : " + age
       end
         
   begin
    puts name("Akash Sondarva")
   rescue ArgumentError => exception
       puts exception
   end

#  IOError

    # Raised when an IO operation fails.
    
    begin
        File.open("raise.rb") {|f| f << "example"}
    rescue IOError => exception
        puts exception
    end
    
  
# EOFError
    # EOFError Raised by some IO operations when reaching the end of file.

    file = File.open("raise.rb")
    file.read
    
   begin
    puts file.readline 
   rescue EOFError => exception
       puts exception
   end
    
# IndexError
    # Raised when the given index is invalid.

   a = ["100", "200"]
        # puts a.fetch(0)   
   begin
    puts a.fetch(5)   
   rescue IndexError => exception
       puts exception
   end


# LocalJumpError
   # Raised when Ruby can't yield as requested.

   def call_block
    yield 21
  end
   # call_block { |i| puts "hello #{i}"}

   begin
       call_block
   rescue LocalJumpError => exception
       puts exception
   end

# NameError
   
    begin
        puts z
    rescue NameError => exception
        puts exception
    end

# NoMethodError
    # Raised when a method is called on a receiver which doesn't have it defined.
   
    begin
       Akash()
   rescue NoMethodError => exception
      puts exception 
   end


# RegexpError
    # Raised when given an invalid regexp expression.
   
   
   begin
    Regexp.new("?")
   rescue RegexpError => exception
       puts exception
   end
  
# RuntimeError
    # RuntimeError is a generic error class raised when an invalid operation is attempted.

  begin
    raise "Akash"
  rescue RuntimeError => exception
      puts "Run time error"
  end
    
#   FloatDomainError
    # Raised when attempting to convert special float values (in particular Infinity or NaN) to numerical classes which don't support them.

 
  begin
    Float::INFINITY.to_r
  rescue FloatDomainError => exception
      puts exception
  end


# SecurityError
    # SecurityError is part of Ruby's security model; it's raised when a potentially unsafe operation is attempted.
    
    #   $SAFE = 4




# SystemCallError
    # SystemCallError is the base class for all low-level platform-dependent errors.
    # The errors available on the current platform are subclasses of SystemCallError and are defined in the Errno module.

    begin
        File.open("not/exist")    
    rescue SystemCallError => exception
        puts exception
    end
   
# SystemStackError
    # A SystemStackError occurs when your Ruby code encounters a stack overflow

    
        def akash
            akash
        end

      begin
        akash
      rescue SystemStackError => exception
          puts exception
      end

# ThreadError
    # Raised when an invalid operation is attempted on a thread.
    

    begin
        Thread.stop
    rescue ThreadError => exception
        puts exception
    end

# TypeError
    # Raised when encountering an object that is not of the expected type.

    #  [1, 2, 3].first("two")

    Name = ['Akash','Dhyey','Nikunj','Yash']


     def print_random(number)
        Integer(number).times do
          puts Name.sample
        end
      end

      begin
        print_random(p)
      rescue TypeError => exception
        puts exception
      end


# SystemExit
    # Raised by exit to initiate the termination of the script.

      begin
        exit
        puts "never get here"
      rescue SystemExit => exception
        puts exception
      end
      
# fatal

    # fatal is an Exception that is raised when Ruby has encountered a fatal error and must exit. 
        # You are not able to rescue fatal.


# ZeroDivisionError
        begin
            puts 5/0
        rescue ZeroDivisionError => exception
            puts exception
        end

# Interrupt

      begin
        puts "Press ctrl-C"
        loop {}
      rescue Interrupt 
        puts
        puts  "You interrupt the code"
      end

