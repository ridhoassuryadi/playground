foods = ["nasi goreng", "capcay", "nasi kecap", "mie goreng"]

part_foods = foods.partition { |food| food.include?("nasi")}

p part_foods #[["nasi goreng", "nasi kecap"], ["capcay", "mie goreng"]]

nasi, other = part_foods

p nasi #["nasi goreng", "nasi kecap"]
p other #["capcay", "mie goreng"]