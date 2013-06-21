# 2520 is the smallest number that can be divided by each of the numbers from 
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the 
# numbers from 1 to 20?
require 'benchmark'
def solveProblem(k)
  valueFound = false
  count = 0
  until valueFound == true
    count += (k-1)*k
    r = (1..k)
    divs = r.find_all{|d| (count%d).zero? }
    # puts "#{count}: #{divs} #{r.to_a == divs}"
    valueFound = true if r.to_a == divs
  end
  count
end
time = Benchmark.measure do
  puts "Answer: #{solveProblem(20)}"
end
puts time
