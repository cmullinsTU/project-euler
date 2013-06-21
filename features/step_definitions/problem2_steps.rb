# fib = fib_1 = fib_2 = sum = 0

# while fib < 4_000_000
#   # puts fib  
#   fib = (fib == 0) ? 1 : fib_1 + fib_2
#   fib_2 = fib_1
#   fib_1 = fib
#   sum = sum + fib if fib % 2 == 0
# end

# puts sum
Given(/^the Fibonacci numbers are less than (\d+)$/) do |maximum|
  @maximum = maximum.to_i
end

When(/^the numbers to sum are (.*)$/) do |even_odd|
  @remainder = (even_odd == 'even') ? 0 : 1
end

Then(/^the sum numbers is (\d+)$/) do |solution|
  fib = fib_1 = fib_2 = sum = 0

  while fib < @maximum
    fib = (fib == 0) ? 1 : fib_1 + fib_2
    fib_2 = fib_1
    fib_1 = fib
    sum = sum + fib if fib % 2 == @remainder
  end

  solution.to_i.should == sum
end
