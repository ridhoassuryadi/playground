numbers = [1,3,4]

even_numbers = numbers.select {|n| n.even?}

p even_numbers