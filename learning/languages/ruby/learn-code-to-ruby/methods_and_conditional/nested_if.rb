def meal_plan(day, time)
    if day == "weekday"
      if time == "breakfast"
        p "salad"
      elsif time == "lunch"
        p "steak"
      else 
        p "don't lunch"
      end 
    else 
      if time == "breakfast"
        p "nasi kuning"
      elsif time == "lunch"
        p "nasi padang"
      else 
        p "sleep"
      end
    end
  end 
  
  
  meal_plan("weekday", "breakfast")