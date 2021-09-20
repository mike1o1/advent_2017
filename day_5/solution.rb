class Day5
  attr_accessor :input

  def initialize(input)
    @input = process_input(input)
  end

  def problem_1
    position = 0
    steps = 0

    while position < input.length
      next_steps = input[position]

      input[position] += 1
      steps += 1

      position += next_steps
    end

    steps
  end

  def problem_2
    position = 0
    steps = 0

    while position < input.length
      next_steps = input[position]

      increase = 1

      if next_steps >= 3
        increase = -1
      end

      input[position] += increase

      position += next_steps
      steps += 1
    end

    steps
  end

  private

  def process_input(input)
    input.split("\n").compact.map(&:to_i)
  end
end
