# The new "Avengers" movie has just been released! There are a lot of people at the cinema box office standing in a huge line. Each of them has a single 100, 50 or 25 dollar bill. An "Avengers" ticket costs 25 dollars.

# Vasya is currently working as a clerk. He wants to sell a ticket to every single person in this line.

# Can Vasya sell a ticket to every person and give change if he initially has no money and sells the tickets strictly in the order people queue?

# Return YES, if Vasya can sell a ticket to every person and give change with the bills he has at hand at that moment. Otherwise return NO.

def tickets(people)
  till = { 25 => 0, 50 => 0, 100 => 0 }

  return 'NO' if people[0] > 25

  people.each do |bill|
    case bill
    when 25
      till[25] += 1
    when 50
      return 'NO' if till[25] == 0
      till[25] -= 1
      till[50] += 1
    when 100
      if till[50] >= 1 && till[25] >= 1
        till[50] -= 1
        till[25] -= 1
      elsif till[25] >= 3
        till[25] -= 3
      else
        return 'NO'
      end
      till[100] += 1
    end
  end

  'YES'
end

p tickets([25, 25, 50]) == 'YES'
p tickets([25, 100]) == 'NO'
p tickets([25, 25, 50, 50, 100]) == 'NO' # Vasya will not have the right bills to give 75 dollars of change (you can't make two bills of 25 from one of 50)