module A
    def a1
        puts "a1"
    end
    def a2
        puts "a2"
    end
 end
 module B
    def b1
        puts "b1"
    end
    def b2
        puts "b2"
    end
 end
 
 class Sample
 include A
 include B
    def s1
        puts "s1"
    end
 end
 
 samp = Sample.new
 samp.a1
 samp.a2
 samp.b1
 samp.b2
 samp.s1





 class Rectangle
 def initialize(length, breadth)
   @length = length
   @breadth = breadth
 end

 def perimeter
   puts 2 * (@length + @breadth)
 end
 def area
   puts @length * @breadth
 end
end

a = Rectangle.new(2,3)
a.area
 