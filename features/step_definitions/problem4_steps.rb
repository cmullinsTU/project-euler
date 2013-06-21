class String
  def palindrome?
    self == self.reverse
  end
end

Given(/^the Math operation multiply$/) do
  @p = []
end

When(/^the numbers are a length of (\d+)$/) do |length|
  max = ("9" * length.to_i).to_i
  min = ((length == 1) ? 1 : "1" + "0" * (length.to_i - 1)).to_i
  @r = max..min
end

Then(/^the largest palindrome is (\d+)$/) do |solution|
  (@r.first).downto(@r.last).each do |x|
    (@r.first).downto(@r.last).each do |y|
      @p << x*y if (x*y).to_s.palindrome?
    end
  end
  solution.to_i.should == @p.max
end
