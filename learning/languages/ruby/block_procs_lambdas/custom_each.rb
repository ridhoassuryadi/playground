def custom_each(array)
    i = 0
    while i < array.length
      yield array[i]
      i += 1
    end 
  end 
  
  custom_each([10,13, 12]) {|n| p n }