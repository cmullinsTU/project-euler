# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
# that the 6th prime is 13.
#
# What is the 10 001st prime number?
require 'prime'
def solveProblem(k)
  primes = Prime.first(k)
  primes.max
end

puts solveProblem(10_001)
