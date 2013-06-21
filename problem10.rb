# To find all the prime numbers less than or equal to 30, proceed as follows.
# First generate a list of integers from 2 to 30:
# 2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
# First number in the list is 2; cross out every 2nd number in the list after it
# (by counting up in increments of 2), i.e. all the multiples of 2:
# 2  3  -  5  -  7  -  9  -- 11 -- 13 -- 15 -- 17 -- 19 -- 21 -- 23 -- 25 -- 27 -- 29 --
# Next number in the list after 2 is 3; cross out every 3rd number in the list 
# after it (by counting up in increments of 3), i.e. all the multiples of 3:
# 2  3  -  5  -  7  -  -  -- 11 -- 13 -- -- -- 17 -- 19 -- -- -- 23 -- 25 -- -- -- 29 --
# Next number not yet crossed out in the list after 3 is 5; cross out every 5th 
# number in the list after it (by counting up in increments of 5), i.e. all the 
# multiples of 5:
# 2  3  -  5  -  7  -  -  -- 11 -- 13 -- -- -- 17 -- 19 -- -- -- 23 -- -- -- -- -- 29 --
# Next number not yet crossed out in the list after 5 is 7; the next step would 
# be to cross out every 7th number in the list after it, but they are all already 
# crossed out at this point, as these numbers (14, 21, 28) are also multiples of
# smaller primes because 7*7 is greater than 30. The numbers left not crossed 
# out in the list at this point are all the prime numbers below 30:
#  2  3     5     7           11    13          17    19          23                29
def sieve(n,x = 2,range = (x..n))
  r = range.to_a.delete_if { |num| num > x && num % x == 0}

  sieve(n,r[r.index(x)+1],r) if x**2 <= n

  r
end

puts sieve(2_000_000).to_s
