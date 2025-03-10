class StringCalculator

  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
      numbers.split(delimiter).map(&:to_i).sum
    else
      numbers = numbers.gsub("\n", ",")
      numbers.split(',').map(&:to_i).sum
    end
  end
end