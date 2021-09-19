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
    sum = 0
    input.each_line do |row|
      sum += calculate_row_division(row)
    end

    sum
  end

  private

  def process_input(input)
    input
  end

  def calculate_row_difference(row)
    values = get_row_values(row)

    values.max - values.min
  end

  def calculate_row_division(row)
    values = get_row_values(row)

    item_1 = 0
    item_2 = 0

    values.each_with_index do |value, index|
      values.each_with_index do |second_value, second_index|
        next if second_index == index

        next if second_value > value

        if value % second_value == 0
          item_1 = value
          item_2 = second_value
        end
      end
    end

    item_1 / item_2
  end

  def get_row_values(row)
    row.split(" ").each.map(&:to_i)
  end
end
