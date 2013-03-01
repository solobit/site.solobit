# This version has the fewest lines of code - but is very slow.
# It checks if n is dividible by every integer 2, 3, 4, 5 ...
# up to sqrt(n)
isPrime1 = (n) ->
  return false  if isNaN(n) or not isFinite(n) or n % 1 or n < 2
  m = Math.sqrt(n)
  i = 2

  while i <= m
    return false  if n % i is 0
    i++
  true

# The next version is better: it checks the divisor 2 separately;
# then, it proceeds to check odd divisors only, from 3 up to sqrt(n).
# At most half of the numbers between 3 and sqrt(n) are checked.
isPrime2 = (n) ->
  return false  if isNaN(n) or not isFinite(n) or n % 1 or n < 2
  return (n is 2)  if n % 2 is 0
  m = Math.sqrt(n)
  i = 3

  while i <= m
    return false  if n % i is 0
    i += 2
  true

# Even better: first, check if n is divisible by 2 or 3.
# Then check only the odd divisors that are not multiples of 3.
# At most 1/3 of divisors under sqrt(n) are checked;
# other divisors are multiples of either 2 or 3 anyway.
isPrime3 = (n) ->
  return false  if isNaN(n) or not isFinite(n) or n % 1 or n < 2
  return (n is 2)  if n % 2 is 0
  return (n is 3)  if n % 3 is 0
  m = Math.sqrt(n)
  i = 5

  while i <= m
    return false  if n % i is 0
    return false  if n % (i + 2) is 0
    i += 6
  true
