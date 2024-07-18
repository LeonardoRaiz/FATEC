# Define a divisible_by_three_and_four method that
# accepts a number as its argument.
# It should return true if the number is evenly divisible by both 3 and 4 .
# It should return false otherwise.
#
# Examples
# The => indicates the expected return value
# divisible_by_three_and_four(3)   => false
# divisible_by_three_and_four(4)   => false
# divisible_by_three_and_four(12)  => true
# divisible_by_three_and_four(18)  => false
# divisible_by_three_and_four(24)  => true

def divisible_by_three_and_four(number)
  if number % 3 == 0 && number % 4 == 0
      return true
  else
      return false
  end
end

# --------------------------------------------------- OU
def divisible_by_three_and_four1(number)
  divisible_by_three = number % 3 == 0
  divisible_by_four = number % 4 == 0
  divisible_by_three && divisible_by_four
end


puts divisible_by_three_and_four1(3)
puts divisible_by_three_and_four1(12)
