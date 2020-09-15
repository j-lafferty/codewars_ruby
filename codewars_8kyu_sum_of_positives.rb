# You get an array of numbers, return the sum of all of the positives ones.

# Example [1,-4,7,12] => 1 + 7 + 12 = 20

# Note: if there is nothing to sum, the sum is default to 0.

def positive_sum(arr)
  arr.select { |i| i > 0 }.sum
end

# Examples:
puts positive_sum([1,2,3,4,5]) == 15
puts positive_sum([1,-2,3,4,5]) == 13
puts positive_sum([-1,2,3,4,-5]) == 9
puts positive_sum([]) == 0
puts positive_sum([-1,-2,-3,-4,-5]) == 0