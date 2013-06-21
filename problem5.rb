# 2520 is the smallest number that can be divided by each of the numbers from 
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the 
# numbers from 1 to 20?
require 'prime'
require 'benchmark'
def perfectPower(prime,k)
  (prime**2 <= k) ? (Math.log(k)/Math.log(prime)).floor : 1
end
def solveProblem(k)
  n = 1
  primes = Prime.first(k).select { |i| i <= k }
  puts "#{primes}"

  primes.each do | prime |
    a = perfectPower(prime,k)
    n = n * prime ** a
    puts "n = #{n}; k = #{k}; a = #{a}; prime = #{prime}"
  end
  n
end

time = Benchmark.measure do
  puts "Answer: #{solveProblem(20)}"
end
puts time
