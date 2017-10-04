# A prime number is a natural number that has exactly two distinct natural number divisors: 1 and itself.
# Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit])
# The first number in the list is 2; cross out every 2nd number in the list after 2 by counting up from 2 in increments of 2 (these will be all the multiples of 2 in the list):
#
# The next number in the list after 2 is 3; cross out every 3rd number in the list after 3 by counting up from 3 in increments of 3 (these will be all the multiples of 3 in the list):
#
# The next number not yet crossed out in the list after 3 is 5; cross out every 5th number in the list after 5 by counting up from 5 in increments of 5 (i.e. all the multiples of 5):
#
# The next number not yet crossed out in the list after 5 is 7; the next step would be to cross out every 7th number in the list after 7, but they are all already crossed out at this point, as these numbers (14, 21, 28) are also multiples of smaller primes because 7 × 7 is greater than 30. The numbers not crossed out at this point in the list are all the prime numbers below 30:
# 2  3     5     7           11    13          17    19          23                29

module BookKeeping
  VERSION = 1
end
class Sieve
  attr_reader :primes

  def initialize(args)
    @primes = [nil,nil, *2..args]
    (2..args**0.5).each do |n|
      (n**2..args).step(n){|m| @primes[m] = nil} if @primes[n]
    end
    @primes.compact!
  end
end
