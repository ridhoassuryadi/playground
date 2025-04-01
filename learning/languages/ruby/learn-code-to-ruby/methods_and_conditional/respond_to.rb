p "Hello".respond_to?("length")
p 1.respond_to?(:next)

x = 5

if x.respond_to?(:next)
   p x.next()
end