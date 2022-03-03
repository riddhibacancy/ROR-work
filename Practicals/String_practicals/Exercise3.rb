# Reverse only vowels in the given string.

# Input: string = "communication"
# Expected output: "comminacituon"

string = "communication"

a = ""
  for i in 0...string.length do
   
     if string[i].match(/[aeiou]/i) then
       a += string[i]
     end
  end
  
  b = a.split(//)
  
  for i in 0...string.length do
    
    if string[i].match(/[aeiou]/i) then
        string[i] = b.pop
    end

 end
  print string
 


