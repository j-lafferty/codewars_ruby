# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

def panagram?(string)
  string.downcase.chars.keep_if { |i| i =~ /[a-z]/ }.sort.uniq == ('a'..'z').to_a
end

# Examples:
puts panagram?("The quick brown fox jumps over the lazy dog.") == true
puts panagram?("This is not a pangram.") == false