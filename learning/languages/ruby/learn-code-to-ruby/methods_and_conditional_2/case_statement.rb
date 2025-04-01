def rasa(taste)
    case taste
      when "Asam", "Asem"
       p "cieeek"
      when "Manis"
       p "mantap"
      when "Pahit"
       p "wwkwwkw"
    else 
      p "hmm"
    end 
  end 
  def nilai_sekolah(nilai)
    case nilai
      when 80..100 then "A"
      when 70..79 then "B"
      when 50..69 then "C"
      when 30..49 then "D"
      when 20..29 then "E"
      else "F"
    end 
  end 
  
  p nilai_sekolah 50
  rasa "manis"