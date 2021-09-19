require "minitest/autorun"
require_relative "../day_2/solution"

class Day2Tests < Minitest::Test
  def test_day_2_calculates_checksum
    input = "5 1 9 5\n7 5 3 \n2 4 6 8\n"

    solution = Day2.new(input).problem_1

    assert_equal 18, solution
  end

  def test_day_2_calculates_division_check
    input = "5 9 2 8\n9 4 7 3\n3 8 6 5\n"

    solution = Day2.new(input).problem_2

    assert_equal 9, solution
  end

  def test_day_2_solution_1_input
    input = File.read("day_2/input.txt")
    answer = Day2.new(input).problem_1

    assert_equal 45351, answer
  end

  def test_day_2_solution_2_input
    input = File.read("day_2/input.txt")
    answer = Day2.new(input).problem_2

    assert_equal 275, answer
  end
end
