# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

def descending_order(n)
  n.digits.sort.reverse.join.to_i
end

# Examples:
puts descending_order(0) == 0
puts descending_order(1) == 1
puts descending_order(42145) == 54421
puts descending_order(145263) == 654321
puts descending_order(123456789) == 987654321