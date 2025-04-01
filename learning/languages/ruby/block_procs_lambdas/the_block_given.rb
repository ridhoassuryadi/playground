def pass_condition 
    p "run inside"
    yield if block_given?
    p "run inside again"
  end 
  
  pass_condition
  
  pass_condition do 
    p "tada"
  end 