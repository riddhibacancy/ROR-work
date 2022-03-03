
# Write a function to find the longest common prefix string amongst an array of strings.

# Input: string = ["challenge","characteristic","champion"] 
# Expected output: "cha"


string = ["challenge","characteristic","champion"] 


def find(str)
    
    s = ""
    a = str[0]
    for i in 0...a.length
        print i
        if str.all?{|x| x[i] == a[i] }
            s += a[i]
        end
    end
    puts s
end

find(string)

