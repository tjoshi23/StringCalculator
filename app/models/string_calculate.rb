class StringCalculate
  def add(numbers)
    return 0 if numbers.empty?

    number_list = numbers.split(/,|\n/).map(&:to_i)

    number_list.sum
  end
end
