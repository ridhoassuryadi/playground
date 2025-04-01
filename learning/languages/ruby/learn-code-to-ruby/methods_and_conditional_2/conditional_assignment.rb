word = "hello"
extraction = 100
alphabet = word[extraction]

# alphabet nil 
alphabet ||= "not found"

p alphabet