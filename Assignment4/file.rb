
# it will print the whole file .. if we write "puts file.readline()" it will print the first line
    # File.open("akash.txt" , "r") do |file|
    #     # puts file.read()
    #     # puts file.readline()
    #     # puts file.read().include? "Akash" # it will return true
    #     # puts file.readlines()[5]

    # end


# we can store it in to variable. if we do this we must close flie in the end with "flie.close"
 
    # file =  File.open("akash.txt" , "r") 

    # puts file.read

    # file.close()


# it will add (Akash Sondarva) at the end of the akash file
    # File.open("akash.txt" , "a") do |file|
    #     file.write("\n Akash Sondarva")
    # end


# it will override the file and jut Akash sondarva will be there in akash.txt

    # File.open("akash.txt" , "w") do |file|
    #     file.write("\n Akash Sondarva")
    # end


# if (sondarva.txt) file is not present it will create new file and add text to it

    # File.open("sondarva.txt" , "w") do |file|
    #     file.write("\n Akash Harsukhbhai Sondarva")
    # end


# (r+) start at the beginning of the file so it will override first 4 letter with yash. so hello will become yasho..! 

    # File.open("akash.txt" , "r+") do |file|
    #     file.write("yash")
    # end


# it will do same as above but, because of "file.readline()" it will override second line. 
    # if we write "file.readchar()" it will move to the second character and then override
       
        # File.open("akash.txt" , "r+") do |file|
        #     file.readline()
        #   # file.readchar()
        #     file.write("yash")
        # end


# it will put output of (file.rb) in to (output_file.txt) 
        # ruby file.rb > output_file.txt 
        # puts "hello Akash"


  # it will read the file1.txt
        # ruby file.rb < file1.txt
        # puts readlines()

# it will first read the "file1.text" and then code of "file.rb" will be executed and it's output get stored in "output_file.txt"
        # ruby file.rb < file1.txt > output_file.txt
        # puts readlines()




