# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# 
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Coprimes
# See: http://en.wikipedia.org/wiki/Coprime_integers#Generating_all_coprime_pairs
def coprime(max, even = true)  
  cp = [] 
  start = (even) ? 2 : 3
  (start..max).each do |m|
    max.times do |n|
      cp << [2*m-n,m] # Branch 1
      cp << [2*m+n,m] # Branch 2
      cp << [m+2*n,n] # Branch 3
    end
  end
  cp.uniq
end

# See Euclid's formula
# http://en.wikipedia.org/wiki/Pythagorean_triple
pyth = []
coprime(10).each do |cp|
  pyth.push({
    a: cp[0] ** 2 - cp[1] ** 2 ,
    b: 2 * cp[0] * cp[1],
    c: cp[0]**2 + cp[1]**2
  })
end

pyth.select! { |i| i[:a] + i[:b] + i[:c] == 1000}

puts pyth[0][:a]*pyth[0][:b]*pyth[0][:c]
