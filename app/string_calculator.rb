class StringCalculator

  def add(numbers)
    return 0 if numbers.empty?

    negatives = []

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
      #numbers.split(delimiter).map(&:to_i).sum
    else
      numbers = numbers.gsub("\n", ",")
      #numbers.split(',').map(&:to_i).sum
    end

    sum = numbers.split(delimiter || ',').map do |num|
      n = num.to_i
      negatives << n if n < 0
      n
    end.sum

    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(',')}"
    end

    sum
  end
end