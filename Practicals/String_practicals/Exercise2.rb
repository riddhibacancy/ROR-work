# Given a sentence, return the length of the last word in the sentence.

# Input: sentence = “       This   is   my  ruby string     practical  assignment   ”
# Expected output: 10

sentence = "This   is   my  ruby string     practical  assignment  "
 
a = sentence.split

puts a[-1].length

