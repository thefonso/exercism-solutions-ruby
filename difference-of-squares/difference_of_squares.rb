# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
# The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.
# Hence the difference between the square of the sum of the first ten natural numbers
# and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.
module BookKeeping
  VERSION = 4
end
class Squares
  def initialize(arg) 
    @number = arg
    @array_of_squares = []
  end
  
  def difference
    square_of_sum - sum_of_squares 
  end

  def square_of_sum 
    ((1..@number).sum)**2
  end

  def sum_of_squares 
    (1..@number).to_a.each do |x|
      @array_of_squares<<x**2
    end 
    @array_of_squares.sum
  end
end
