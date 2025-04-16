class StringCalculator
  def self.add(numbers)
    return 0 if numbers.strip.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = delimiter_line[2]
    end

    numbers = numbers.gsub("\n", delimiter)
    nums = numbers.split(delimiter).map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

    nums.sum
  end
end
