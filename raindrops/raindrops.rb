module BookKeeping
  VERSION = 3
end
class Raindrops 
  
  SOUND_HASH = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(args)
    number = args; result_array = []; result_string = []

    (1..number).to_a.each { |x| number % x == 0 ? result_array<<x : result_array}

    result_array.each { |y| SOUND_HASH[y] != nil ? result_string<<SOUND_HASH[y] : result_string }

    return (number == 1 || result_string.length == 0) ? number.to_s : result_string.join('')
  end

end

