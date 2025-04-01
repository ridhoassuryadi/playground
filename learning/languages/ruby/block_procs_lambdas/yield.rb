def something 
    p "i am something"
    yield 
    p "into to you"
  end 
  
  
  something { p "from outside"}
  
  
  def get_address(name)
    p "get adress"
    address = yield
    p "name: #{name} address: #{address}"
  end 
  
  
  get_address("ridho") { "karya utam"}