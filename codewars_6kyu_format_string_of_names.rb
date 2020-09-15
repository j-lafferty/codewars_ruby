# Given: an array containing hashes of names

# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

def list(names)
  formatted = names.map do |i|
    if names.index(i) < names.size - 2
      i[:name] + ','
    elsif names.index(i) == names.size - 1 && names.size > 1
      '& ' + i[:name]
    else
      i[:name]
    end
  end

  formatted.join(' ')
end

# Example:
puts list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) == 'Bart, Lisa, Maggie, Homer & Marge'
puts list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) == 'Bart, Lisa & Maggie'
puts list([ {name: 'Bart'}, {name: 'Lisa'} ]) == 'Bart & Lisa'
puts list([ {name: 'Bart'} ]) == 'Bart'
puts list([]) == ''