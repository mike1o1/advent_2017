require "minitest/autorun"
require_relative "../day_4/solution"

class Day4Tests < Minitest::Test
  def test_day_4_solution_1
    assert_equal 1, Day4.new("aa bb cc dd ee").problem_1
    assert_equal 0, Day4.new("aa bb cc dd aa").problem_1
    assert_equal 1, Day4.new("aa bb cc dd aaa").problem_1
  end

  def test_day_4_solution_2
    assert_equal 1, Day4.new("abcde fghij").problem_2
    assert_equal 0, Day4.new("abcde xyz ecdab").problem_2
    assert_equal 1, Day4.new("a ab abc abd abf abj").problem_2
    assert_equal 1, Day4.new("iiii oiii ooii oooi oooo").problem_2
    assert_equal 0, Day4.new("oiii ioii iioi iiio").problem_2
  end
end
