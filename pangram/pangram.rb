# A pangram is a sentence using every letter of the alphabet at least once.
# Example: The quick brown fox jumps over the lazy dog.
# The alphabet used consists of ASCII letters a to z, inclusive, and is case insensitive.
# Input will not contain non-ASCII symbols.
module BookKeeping
  VERSION = 5
end
class Pangram
  def self.pangram?(phrase)
    phrase = phrase.downcase
    all_alphabet?(phrase) 
  end
  def self.all_alphabet?(phrase)
    alphabet_array = ('a'..'z').to_a
    phrase_array = phrase.split('')
    alphabet_array & phrase_array == alphabet_array
  end
end
