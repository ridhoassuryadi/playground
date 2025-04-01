animals = ["ant", "cow", "goat"]

p animals.find {|a| a.include?("a")} #ant
p animals.detect {|a| a.include?("a")} #ant