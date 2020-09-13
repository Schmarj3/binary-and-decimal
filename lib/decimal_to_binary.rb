# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def decimal_to_binary(decimal)
  binary_array = Array.new(8, 0)
  count = binary_array.length - 1

  until decimal == 0
    if decimal % 2 == 1
      binary_array[count] = 1
    end
    decimal /= 2
    count -= 1
  end
  return binary_array
end
