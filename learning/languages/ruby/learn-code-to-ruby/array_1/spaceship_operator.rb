=begin
a <=> b :=
  if a < b then return -1
  if a = b then return  0
  if a > b then return  1
  if a and b are not comparable then return nil
=end

p [1,2,3] <=> [1,2,3] #output: 0
p [3,2,1] <=> [2,1,3] #output: 1
p 3 <=> [3,1,2] #output: nil
p [1,3,4] <=> [2,1,3] #output: -1