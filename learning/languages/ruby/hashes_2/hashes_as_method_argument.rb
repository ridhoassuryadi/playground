burger = {price: 20000, tax: 500}
french_fries = {price: 3000, tax: 10}

def info(item)
  total = item[:tax] + item[:price]
  p total
end 

info(burger)