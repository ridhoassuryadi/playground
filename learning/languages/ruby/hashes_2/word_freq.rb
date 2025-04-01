word = "hello lorem ipsum"

def count_char(word)
  dict = Hash.new(0)
  word.split("").each {|c| dict.key?(c) ? dict[c] = dict[c] + 1 : dict[c] = 1}

  dict
end

x = count_char(word)
p x
