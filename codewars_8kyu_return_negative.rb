# In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

def makeNegative(num)
  num < 0 ? num : -num
end

# Example:
puts makeNegative(1) == -1
puts makeNegative(-5) == -5
puts makeNegative(0) == 0
puts makeNegative(42) == -42

# Notes:
# The number can be negative already, in which case no change is required.
# Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.