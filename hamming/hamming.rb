module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute a, b
    a1 = a.split('')
    b2 = b.split('')
    # compare each element in a and b, if match add to count
    raise ArgumentError.new("must be same length") if a.length != b.length
    a1.zip(b2).count{|a,b| a != b }
  end
end
