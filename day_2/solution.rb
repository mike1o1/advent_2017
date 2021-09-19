class Day2
  attr_accessor :input

  def initialize(input)
    @input = process_input(input)
  end

  def problem_1
    checksum = 0
    input.each_line do |row|
      checksum += calculate_row_difference(row)
    end

    checksum
  end

  def problem_2

  end

  private

  def process_input(input)
    input
  end

  def calculate_row_difference(row)
    values = row.split(" ").each.map(&:to_i)

    values.max - values.min
  end
end
