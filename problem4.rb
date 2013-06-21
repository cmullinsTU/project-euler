require 'prime'
# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
class String
  def palindrome?
    self == self.reverse
  end
end

p = []
# Hint: The answer will be less than 999*999 which equals 998001
r = 999..100
(r.first).downto(r.last).each do |x|
  (r.first).downto(r.last).each do |y|
    # puts "#{x} #{y} #{x*y}"
    p << x*y if (x*y).to_s.palindrome?
    end
  end
  # break if p > 0
# end
puts p.max
