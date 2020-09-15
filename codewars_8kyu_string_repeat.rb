# Write a function called repeat_str which repeats the given string src exactly count times.

def repeat_str(n, s)
  s * n
end

# Example:
puts repeat_str(3, "*") == "***"
puts repeat_str(5, "#") == "#####"
puts repeat_str(2, "ha ") == "ha ha "