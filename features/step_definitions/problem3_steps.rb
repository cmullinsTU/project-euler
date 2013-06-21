require 'prime'

Given(/^the number (\d+)$/) do |num|
  @number = num.to_i
end

When(/^the question is what's the largest prime factor$/) do
end

Then(/^the largest number is (\d+)$/) do |solution|
  solution.to_i.should == @number.prime_division.flatten.max
end
