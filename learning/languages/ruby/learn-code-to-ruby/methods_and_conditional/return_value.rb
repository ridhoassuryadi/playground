def add_two_number(f, s)
   f + s
end 

def add_three_number(f, s, t)
   s = f + s 
   return s + t
end 

def nothing(f, s) 
  p "nothing"
end

p add_two_number(1,3) #4
p add_three_number(1,3, 5) #9
p nothing(1,2) #nil