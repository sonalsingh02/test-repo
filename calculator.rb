# Input: a string of comma separated numbers
# Output: an integer, sum of the numbers

# Examples:
# Input: "", "1", "1,5"
# Output: 0, 1, 6

# Input: "", "1", "1\n2,;3"
# Output: 0, 1, 6

# Input: "", "-1", "1,5"
# Output: "negative numbers not allowed"

class Calculator
  def format_string_to_array(input_string)
    # If the input string is empty, return 0
    return 0 if input_string.empty?
    input_string.split(", ").map{|a| a.gsub(/"/,'') }
  end

  def sum_of_numbers(input_string)
    # If the input string is empty, return 0
    return 0 if input_string.empty?
    final_array = input_string.split(/[;,]|\\n/).map(&:strip).map(&:to_i)

    if final_array.any?(&:negative?)
      return "negative numbers not allowed"
    else
      final_array.sum
    end
  end

  def calculator stringInput
    #return "please enter a string" if stringInput.class == Array 
    if stringInput.include?("-")
      return "negative numbers not allowed"
    else
      arrayInput = format_string_to_array(stringInput)
      arrayInput.map { |input| sum_of_numbers(input) }
    end
  end
end
