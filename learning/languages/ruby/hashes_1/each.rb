menu = {burger: 2000, pentol: 1000}

menu.each do |key, value|
  p key 
  p value
end

menu.each_key {|key| p key}
menu.each_value {|value| p value}