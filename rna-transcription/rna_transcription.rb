module BookKeeping
  VERSION = 4
end
class Complement
  
  DNA_TO_RNA = {"G" => "C","A" => "U","T" => "A", "C" => "G"}
  
  def self.of_dna(value)
    value.chars.map!{|x| DNA_TO_RNA[x] or raise ArgumentError, "Invalid char use GATC" }.join("")
  end
end
