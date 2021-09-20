require "minitest/autorun"
require_relative "../day_3/solution"

class Day3Tests < Minitest::Test
  def test_day_1_solution_1
    assert_equal 2, Day3.new("23").problem_1
    assert_equal 0, Day3.new("1").problem_1
    assert_equal 3, Day3.new("12").problem_1
    assert_equal 31, Day3.new("1024").problem_1
    # assert_equal 31, Day3.new("325489").problem_1
  end
end
