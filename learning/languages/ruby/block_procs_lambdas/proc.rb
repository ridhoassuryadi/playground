nums = [2,3,4,5,6]
ages = [20,10,40]


plus_1 = Proc.new {|n| n + 1}
is_old = Proc.new do |age| 
  age  > 10
end 

added_one = nums.map(&plus_1)

p added_one

p ages.select(&is_old)