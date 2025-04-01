items = [1,3,5,10]

p items.map(&:to_s)

p items.select {|n| n.even?}
p items.select(&:even?)

p items.reject {|n| n.odd?}
p items.reject(&:odd?)