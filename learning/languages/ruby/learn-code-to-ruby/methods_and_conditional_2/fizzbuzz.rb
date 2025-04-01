def fizzbuzz(number)
    i = 1
  
    until i > number
      if i % 15 == 0
        p "fizzbuzz"
      elsif i % 5 == 0
        p "fizz"
      elsif i % 3 == 0
        p "buzz"
      end
     i += 1
    end
  end
  
  
  fizzbuzz 32