# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

def unique_in_order(iterable)
  iterable = iterable.chars if iterable.class == String
  return iterable if iterable.size == 1
  
  ord_uniq = []

  iterable.size.times do |i| 
    ord_uniq << iterable[i] unless iterable[i] == ord_uniq.last
  end

  ord_uniq
end

p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3])       == [1,2,3]
p unique_in_order('AA')              == ['A']
