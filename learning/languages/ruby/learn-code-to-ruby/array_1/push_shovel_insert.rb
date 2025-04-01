locations = ["airport", "port"]
p locations 

locations.push("restaurant") #["airport", "port", "restaurant"]
p locations 

locations << "shop" << "school" #["airport", "port", "restaurant", "shop", "school"]
p locations

locations.insert(1, "mall") #["airport", "mall", "port", "restaurant", "shop", "school"]
p locations