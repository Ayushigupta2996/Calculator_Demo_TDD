class StringCalculator
  def add(numbers)
    ## Return 0 if the input string is empty
    return 0 if numbers.empty?
    ## Determine the delimiter
    delimiter = if numbers.start_with?("//")
                  # If the string starts with "//", the delimiter is the character after "//"
                  numbers[2]
                else
                   # Otherwise, the delimiters are either a comma or a newline
                  /,|\n/
                end

    # Remove the custom delimiter declaration line
    numbers = numbers.split("\n", 2).last if numbers.start_with?("//")

    # Split the string by the delimiter to get an array of numbers
    num_list = numbers.split(delimiter).map(&:to_i)

    # Check for negative numbers and raise an error if any are found
    negatives = num_list.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    # Sum the numbers and return the result
    num_list.sum
  end
end
