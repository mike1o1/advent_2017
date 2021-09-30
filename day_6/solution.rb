class Day6
  attr_accessor :input

  def initialize(input)
    @input = process_input(input)
  end

  def problem_1
    length = input.length

    findings = Hash.new

    no_duplicates = true
    iteration_count = 0

    while no_duplicates do
      iteration_count += 1

      max = input.max
      start_position = input.index(max)

      # clear the input
      input[start_position] = 0

      (1..max).each do |i|
        next_position = start_position + i

        # we need to loop through the array.
        next_position = next_position % length

        input[next_position] += 1
      end

      key = input.join("|")

      no_duplicates = findings.dig(key).nil?

      if no_duplicates
        findings[key] = iteration_count
      end
    end

    iteration_count
  end

  def problem_2
    length = input.length

    findings = Hash.new

    no_duplicates = true
    iteration_count = 0

    while no_duplicates do
      iteration_count += 1

      max = input.max
      start_position = input.index(max)

      # clear the input
      input[start_position] = 0

      (1..max).each do |i|
        next_position = start_position + i

        # we need to loop through the array.
        next_position = next_position % length

        input[next_position] += 1
      end

      key = input.join("|")

      no_duplicates = findings.dig(key).nil?

      if no_duplicates
        findings[key] = iteration_count
      end
    end

    iteration_count - findings[input.join("|")]
  end

  private

  def process_input(input)
    input.chomp.split("\t").map(&:to_i)
  end
end
