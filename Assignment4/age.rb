# Write a program to read your birth date from a file and calculate your age and write it down into new file.


require 'date'
a = readline

dob =  Date.strptime(a, '%d-%m-%Y')

now = Time.now.to_date

age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
puts "your age is #{age}"



# (ruby age.rb < file1.txt > output_file.txt)  by runing this you will get output in (output_file.txt)


# if there is multipal line we can use loop
# for line in readlines
#     dob =  Date.strptime(line, '%d-%m-%Y')
#     age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
#     puts "your age is #{age}"
# end

