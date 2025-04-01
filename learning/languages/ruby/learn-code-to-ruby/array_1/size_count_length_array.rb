=begin 
Whether you should use length or 
size is mostly a matter of personal preference. 
Personally I use size for collections (hashes, arrays, etc) and length for strings,
=end

arr = [1, 1, 2, 3, 5, 6, 8]

p arr.size

# counting odd number
p arr.count(&:odd?) # => 3

# counting
p arr.count(1) # => 2