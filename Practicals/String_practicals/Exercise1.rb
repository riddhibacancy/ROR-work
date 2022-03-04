
# Write a function to find the longest common prefix string amongst an array of strings.

# Input: string = ["challenge","characteristic","champion"] 
# Expected output: "cha"


# string = ["challenge","characteristic","champion"] 


string = ["cirs","cars"] 


def find(str)
    
    s = ""
    a = str[0]
    for i in 0...a.length
        
        if str.all?{|x| x[i] == a[i] }
            s += a[i]
        else
            break
        end

    end
    return s
end

puts find(string)

