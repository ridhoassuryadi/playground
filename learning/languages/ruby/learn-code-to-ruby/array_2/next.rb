nums = [1,3,2, "l"]

nums.each do |n| 
  unless n.is_a?(Fixnum)
    next 
  else 
    p n 
  end 
end