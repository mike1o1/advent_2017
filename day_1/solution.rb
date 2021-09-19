class Day1
  attr_accessor :input

  def initialize(input)
    @input = process_input(input)
  end

  def problem_1
    calculate_sum
  end

  def problem_2
    calculate_second_captcha
  end

  def process_input(input)
    input.split("\n").first
  end

  def calculate_sum
    sum = 0
    input.each_char.with_index do |value, index|
      next_value = input[index + 1]

      if index == input.length - 1
        next_value = input.each_char.first
      end

      if value == next_value
        sum += value.to_i
      end
    end

    sum
  end

  def calculate_second_captcha
    sum = 0
    step = input.length / 2

    input.each_char.with_index do |value, index|
      next_position = index + step
      if next_position > input.length - 1
        next_position = next_position - (input.length)
      end

      next_value = input[next_position]

      # puts "Index: #{index}: Comparing #{value} to #{next_value}. Next position: #{next_position}"

      if value == next_value
        sum += value.to_i
      end
    end

    sum
  end
end
