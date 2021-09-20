class Day1
  attr_accessor :input

  def initialize(input)
    @input = process_input(input)
  end

  def problem_1
    calculate_sum(1)
  end

  def problem_2
    step = input.length / 2

    calculate_sum(step)
  end

  private

  def process_input(input)
    input.split("\n").first
  end

  def calculate_sum(step)
    sum = 0

    input.each_char.with_index do |value, index|
      next_position = index + step
      if next_position > input.length - 1
        next_position -= input.length
      end

      next_value = input[next_position]

      if value == next_value
        sum += value.to_i
      end
    end

    sum
  end
end
