class String
  def palindrome?
    string = self.downcase.gsub(/\W/,'')
    string.reverse == string
  end
end

module Enumerable
  def palindrome?
    self == self.reverse
  rescue NoMethodError
    self.to_a == self.to_a.reverse
  end
end
