names = ["ridho", "weyza", "hana"]

str_name = names.join(".")

p str_name #ridho.weyza.hana


def custom_join(arr, delimiter="_")
    res = ""
    last_index = arr.length - 1
    arr.each_with_index do |a, i|
      res << a 
      res << delimiter unless i == last_index
    end 
 
   return res
 end
 
 p custom_join(names, " ")
      