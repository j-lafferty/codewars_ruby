# There is a queue for the self-checkout tills at the supermarket. Your task is write a function to calculate the total time required for all the customers to check out!

# input
# customers: an array of positive integers representing the queue. Each integer represents a customer, and its value is the amount of time they require to check out.
# n: a positive integer, the number of checkout tills.
# output
# The function should return an integer, the total time required.

def queue_time(customers, n)
  tills = Array.new(n <= 0 ? 1 : n, 0)
  customers.each { |customer| tills[tills.index(tills.min)] += customer }
  tills.max
end

p queue_time([], 1) == 0
p queue_time([5], 1) == 5
p queue_time([2], 5) == 2
p queue_time([1,2,3,4,5], 1) == 15
p queue_time([1,2,3,4,5], 100) == 5
p queue_time([2,2,3,3,4,4], 2) == 9
p queue_time([81, 6, 786, 758, 197, 59], 2) == 989
p queue_time([806, 8, 688, 4, 2, 3, 8, 2, 3, 8, 6, 6, 5, 2, 790, 69, 84, 3, 10, 7, 9, 311, 268, 5, 61, 64, 20, 944, 2, 435, 944, 2, 996, 92, 6, 1, 61, 55, 7, 4, 6, 481, 80, 381, 7, 674, 9, 381, 287, 9, 32, 2, 856], 15) == 1061
