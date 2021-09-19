require "minitest/autorun"
require_relative "../day_1/solution"

class Day1Tests < Minitest::Test
  def test_day_1_solution_1_example_1
    solution = Day1.new("1122\n")

    sum = solution.problem_1

    assert_equal 3, sum
  end

  def test_day_1_solution_1_example_2
    solution = Day1.new("91212129\n")
    sum = solution.problem_1

    assert_equal 9, sum

    solution = Day1.new("1111\n")
    assert_equal 4, solution.problem_1

    solution = Day1.new("1234\n")
    assert_equal 0, solution.problem_1
  end

  def test_day_1_solution_2
    sol = Day1.new("1212").problem_2
    assert_equal 6, sol

    sol = Day1.new("1221").problem_2
    assert_equal 0, sol

    sol = Day1.new("123425").problem_2
    assert_equal 4, sol

    sol = Day1.new("123123").problem_2
    assert_equal 12, sol

    sol = Day1.new("12131415").problem_2
    assert_equal 4, sol
  end

  def test_day_1_solution_1_input
    input = File.read("day_1/input.txt")
    answer = Day1.new(input).problem_1

    assert_equal 1393, answer
  end

  def test_day_1_solution_2_input
    input = File.read("day_1/input.txt")
    answer = Day1.new(input).problem_2

    assert_equal 1292, answer
  end
end
