animals = ["zebra", "lion", 1, "naga"]

animals.each do |an|
  if an.is_a?(String) 
    p an 
  else 
    p "Nooo #{an} is not string"
    break
  end 
end