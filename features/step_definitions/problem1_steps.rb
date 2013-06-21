def isMultiple?(value)
  ret = false
  @multiples.each { |i| ret = true if (value % i == 0) }
  ret
end

Given /^the numbers are multiples of the following numbers$/ do |nums|
  @multiples = nums.raw.flatten.map { |i| i.to_i }
end

When(/^the numbers are below (.*)$/) do |max|
  @maximum = max.to_i
end

Then(/^the sum of the numbers is (.*)$/) do |number|
  sum = 0
  @maximum.to_i.times do |num|
    if isMultiple?(num)
      sum = sum + num
      # puts "#{num} #{sum}"
    end
  end
  number.to_i.should == sum
end
