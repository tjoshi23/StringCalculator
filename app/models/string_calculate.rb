class StringCalculate
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = get_delimiter(numbers)

    validate_numbers(numbers, delimiter)

    number_list = numbers.split(/,|\n|#{Regexp.escape(delimiter)}/).map(&:to_i)

    number_list.sum
  end

  private

  def get_delimiter(numbers)
    if numbers.start_with?("//")
      numbers[2]
    else
      ","
    end
  end

  def validate_numbers(numbers, delimiter)
    if numbers.include?(",\n") || numbers.include?("\n,") || numbers.end_with?("\n") || numbers.end_with?(delimiter)
      raise "Incorrect newline placement"
    end
  end
end
