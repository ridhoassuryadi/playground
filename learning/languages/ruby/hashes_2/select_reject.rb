recipe = {sugar: 3, tea: 1}

p recipe.select {|ingredient, teaspoon| teaspoon < 2} # {:tea => 1}
p recipe.reject {|ingredient, teaspoon| teaspoon < 2} # {:sugar => 3}
