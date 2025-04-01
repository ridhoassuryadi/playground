food = "nasi goreng"

if food.include?("nasi")
    p "yep ini nasi"
end


def is_green?(color)
    if color == "greentea"
      true
    elsif color == "green"
     true 
    else 
      false 
    end 
  end 
  
  p is_green?("yellow")
  