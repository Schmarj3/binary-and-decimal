# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  result = 0
  binary_array.length.times do |index|
    # puts index
    # puts binary_array[index]
    case index
    when 0
      value = binary_array[index] * 2**7
    when 1
      value = binary_array[index] * 2**6
    when 2
      value = binary_array[index] * 2**5
    when 3
      value = binary_array[index] * 2**4
    when 4
      value = binary_array[index] * 2**3
    when 5
      value = binary_array[index] * 2**2
    when 6
      value = binary_array[index] * 2**1
    when 7
      value = binary_array[index] * 2**0
    else
      #  do something
      raise NotImplementedError
    end
    result += value
    # puts result
  end
end

array = [ 0, 0, 0, 0, 1, 0, 0, 1 ]
binary_to_decimal(array)