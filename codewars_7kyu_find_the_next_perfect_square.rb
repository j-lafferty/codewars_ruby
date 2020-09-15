# You might know some pretty large perfect squares. But what about the NEXT one?

# Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter. Recall that an integral perfect square is an integer n such that sqrt(n) is also an integer.

# If the parameter is itself not a perfect square then -1 should be returned. You may assume the parameter is positive.

def find_next_square(sq)
  sqrt = Math.sqrt(sq).floor
  sq == sqrt**2 ? (sqrt + 1)**2 : -1
end

# Examples:

puts find_next_square(121) == 144
puts find_next_square(625) == 676
puts find_next_square(319225) == 320356
puts find_next_square(15241383936) == 15241630849
puts find_next_square(155) == -1
puts find_next_square(342786627) == -1