def sums(*nums)
    result = 0
    nums.each {|n| result += n }
    return result
  end
  
  p sums(1,3,4,5,6)