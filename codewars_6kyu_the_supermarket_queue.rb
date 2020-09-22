# There is a queue for the self-checkout tills at the supermarket. Your task is write a function to calculate the total time required for all the customers to check out!

# input
# customers: an array of positive integers representing the queue. Each integer represents a customer, and its value is the amount of time they require to check out.
# n: a positive integer, the number of checkout tills.
# output
# The function should return an integer, the total time required.

def queue_time(customers, n)
  lines =  customers.group_by.with_index {|_,index| index % n }.values
  max_time = 0

  lines.each { |line| max_time = line.sum if line.sum > max_time }

  max_time
end

p queue_time([], 1) == 0
p queue_time([5], 1) == 5
p queue_time([2], 5) == 2
p queue_time([1,2,3,4,5], 1) == 15
p queue_time([1,2,3,4,5], 100) == 5
p queue_time([2,2,3,3,4,4], 2) == 9
p queue_time([81, 6, 786, 758, 197, 59], 2) == 989
