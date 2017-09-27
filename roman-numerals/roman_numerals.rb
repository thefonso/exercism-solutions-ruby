module BookKeeping
  VERSION = 3
end

class Numeric
  include Enumerable
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_roman
    roman_hash = {
        1000 => 'M',
        900  => 'CM',
        500 => 'D',
        400 => 'CD',
        100 => 'C',
        90  => 'XC',
        50 => 'L',
        40 => 'XL',
        10 => 'X',
        9  => 'IX',
        5 => 'V',
        4 => 'IV',
        1 => 'I'
    }
    my_string = ""
    roman_hash.each do |key, value|
      (@number / key).times {my_string << value; @number = @number - key}
    end
    my_string
  end
end
