# A prime number is a natural number that has exactly two distinct natural number divisors: 1 and itself.
# https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
#
require 'pry'

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
