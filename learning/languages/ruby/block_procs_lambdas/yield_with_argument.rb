def number_evaluation(num1,num2, num3)
    p "call inside"
    yield(num1,num2,num3)
  end 
  
  
  result = number_evaluation(1,2,3) {|x1,x2,x3| x1 + x2 + x3}
  
  p result