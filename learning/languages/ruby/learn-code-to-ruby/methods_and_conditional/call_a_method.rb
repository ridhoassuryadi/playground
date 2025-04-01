def add(a, b)
    a + b
  end 
  
  def substract(a, b)
    a - b
  end
  
  def divide(a, b)
    a / b
  end
  
  def calculator(a, b, operation="add")
   if operation == "add"
     p "a + b #{add(a,b)}"
   elsif operation == "substract"
     p "a - b #{substract(a,b)}"
   elsif operation == "divide"
     p "a / b #{divide(a,b)}"
   else 
     p "undefined"
   end 
  end 
  
  calculator(1,2)