require "minitest/autorun"
require_relative "../day_2/solution"

class Day2Tests < Minitest::Test
  def test_day_2_calculates_checksum
    input = "5 1 9 5\n7 5 3 \n2 4 6 8"

    solution = Day2.new(input).problem_1

    assert_equal 18, solution
  end
end
