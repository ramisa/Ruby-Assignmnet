class String
  def palindrome?
    string = self.downcase.gsub(/\W/,'')
    string.reverse == string
  end
end


#creates Enumerable to use across multiple calsses for an array of numbers
module Enumerable
def palindrome?
self == self.reverse
self.to_a == self.to_a.reverse
end
end

p ["hello, my name is Ramisa"].palindrome?
p [1, 2, 1 , 2].palindrome?
