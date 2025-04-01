base = ["nasi goreng", "capcay", "mie goreng"]
ingredient = ["kecap", "ikan asin", "bihun"]

base.each do |b|
  ingredient.each do |i|
    p "#{b} with #{i}"
  end 
end