fives = [5,10,15,20,25,30]
odds = []
evens = []

fives.each {|n| n.even? ? evens << n : odds << n}

p odds
p evens
