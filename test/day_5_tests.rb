require "minitest/autorun"
require_relative "../day_5/solution"

class Day5Tests < Minitest::Test
  def test_day_5_solution_1
    input = "0\n3\n0\n1\n-3\n"

    steps = Day5.new(input).problem_1

    assert_equal 5, steps
  end

  def test_day_5_solution_2
    input = "0\n3\n0\n1\n-3\n"

    steps = Day5.new(input).problem_2

    assert_equal 10, steps
  end
end
