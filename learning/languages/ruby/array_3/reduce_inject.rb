alot = [1,2,4].inject(0, :+)
result = [1,2,3].reduce(0) do |prev, curr| 
  p "prev:#{prev} current:#{curr}"
  prev + curr
end

p alot
p result