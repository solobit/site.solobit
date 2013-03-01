# An algorithm is said to take logarithmic time if T(n) = O(log n). Due to the
# use of the binary numeral system by computers, the logarithm is frequently
# base 2 (that is, log2 n, sometimes written lg n). However, by the change of
# base equation for logarithms, loga n and logb n differ only by a constant
# multiplier, which in big-O notation is discarded; thus O(log n) is the
# standard notation for logarithmic time algorithms regardless of the base of
# the logarithm.

# Algorithms taking logarithmic time are commonly found in operations on binary
# trees or when using binary search.

# A O(log n) algorithm is considered highly efficient, as the operations per
# instance required to complete decrease with each instance.

# A very simple example of this type of f(n) is an algorithm that cuts a string
# in half. It will take O(log n) time (n being the length of the string) since
# we chop the string in half before each print. This means, in order to increase
# the number of prints, we have to double the length of the string.

# Function to recursively print the right half of a string

right = (str) ->
  length = str.length

  # Helper function
  help = (index) ->

    # Recursive Case: Print right half
    if index < length

      # Prints characters from index until the end of the array
      console.log str.substring(index, length)

      # Recursive Call: call help on right half
      help Math.ceil((length + index) / 2)


  # Base Case: Do Nothing
  help 0
